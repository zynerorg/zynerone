use hyperlocal::Uri;
use hyper::{
    Request,
    Method,
    Body
};

use rocket::{
    State,
    Rocket,
    Build,
};
use serde_json::Value;
use crate::structs::Data;
use crate::route_url;

#[post("/<container>/start")]
async fn start(data: &State<Data>, container: &str) -> Value {

    let url = Uri::new("/var/run/docker.sock", &format!("/containers/{}/start", container));

    let req = Request::builder()
        .method(Method::POST)
        .uri(url)
        .body(Body::empty())
        .expect("request builder");
    data.docker.request(req).await.unwrap();

    serde_json::from_str("{\"type\": \"success\", \"msg\": \"command completed successfully\"}").unwrap()
}

pub fn routes(rocket: Rocket<Build>, base_url: &str) -> Rocket<Build> {
    rocket.mount(route_url!(base_url, "/"), routes![start])
}

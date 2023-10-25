use hyperlocal::Uri;

use rocket::{
    State,
    Rocket,
    Build,
};
use serde_json::Value;
use crate::structs::Data;
use crate::route_url;
#[get("/<container>")]
async fn get_specific(data: &State<Data>, container: &str) -> Value {
    let url = Uri::new("/var/run/docker.sock", &format!("/containers/{}/json", container)).into();   

    let response = data.docker.get(url).await.unwrap();

    let buf = hyper::body::to_bytes(response).await.unwrap();
    let res_json_str = std::str::from_utf8(&buf).unwrap();
    let res_data: Value = serde_json::from_str(res_json_str).unwrap();
    serde_json::to_value(res_data).unwrap()
}

pub fn routes(rocket: Rocket<Build>, base_url: &str) -> Rocket<Build> {
    rocket.mount(route_url!(base_url, "/"), routes![get_specific])
}

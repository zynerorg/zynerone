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
use futures::future;
use crate::helpers;
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
    let response = data.docker.request(req).await.unwrap();

    serde_json::from_str("{\"type\": \"success\", \"msg\": \"command completed successfully\"}").unwrap()
}

#[post("/<container>/stop")]
async fn stop(data: &State<Data>, container: &str) -> Value {

    let url = Uri::new("/var/run/docker.sock", &format!("/containers/{}/stop", container));

    let req = Request::builder()
        .method(Method::POST)
        .uri(url)
        .body(Body::empty())
        .expect("request builder");
    let response = data.docker.request(req).await.unwrap();

    serde_json::from_str("{\"type\": \"success\", \"msg\": \"command completed successfully\"}").unwrap()
}

#[post("/<container>/restart")]
async fn restart(data: &State<Data>, container: &str) -> Value {

    let url = Uri::new("/var/run/docker.sock", &format!("/containers/{}/restart", container));

    let req = Request::builder()
        .method(Method::POST)
        .uri(url)
        .body(Body::empty())
        .expect("request builder");
    let response = data.docker.request(req).await.unwrap();

    serde_json::from_str("{\"type\": \"success\", \"msg\": \"command completed successfully\"}").unwrap()
}
#[get("/")]
async fn get(data: &State<Data>) -> Value {
    let url = Uri::new("/var/run/docker.sock", "/containers/json?all=true").into();   

    let response = data.docker.get(url).await.unwrap();

    let buf = hyper::body::to_bytes(response).await.unwrap();
    let res_json_str = std::str::from_utf8(&buf).unwrap();
    let res_data: Value = serde_json::from_str(res_json_str).unwrap();
    let container_json_array = future::try_join_all(
	res_data
	    .as_array()
	    .unwrap_or(&vec![])
	    .iter()
	    .map(|container| {
		let container_id = container["Id"].as_str().unwrap_or_default();
		let container_info = helpers::container::info::get(data, container_id);

		container_info
	    }))
	.await
	.unwrap();

    let custom_json_object = container_json_array
        .iter()
        .map(|container| {
            let container_id = container["Id"].as_str().unwrap_or_default();
	    let container_info = container;

            (container_id.to_string(), container_info.clone())
        })
        .collect::<serde_json::Map<String, Value>>();
    serde_json::to_value(custom_json_object).unwrap()
}

pub fn routes(rocket: Rocket<Build>, base_url: &str) -> Rocket<Build> {
    rocket.mount(route_url!(base_url, "/containers"), routes![get, start, stop, restart])
}

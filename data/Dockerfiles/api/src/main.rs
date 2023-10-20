mod structs;

use rocket::State;
use structs::Data;
use hyper::{Client};
use hyperlocal::{UnixClientExt, Uri};
use std::error::Error;
use serde_json::Value;
use futures::future;

#[macro_use] extern crate rocket;

const DOCKER_SOCKET: &str = "/var/run/docker.sock";

async fn get_container_info(data: &State<Data>, container_id: &str) -> Result<Value, Box<dyn Error + Send>> {
    let path = &format!("/containers/{}/json", container_id);
    let uri = Uri::new(DOCKER_SOCKET, path).into();
    let docker_response = data.docker.get(uri).await.unwrap();    
    let body_bytes = hyper::body::to_bytes(docker_response.into_body()).await.unwrap();

    let response: Value = serde_json::from_slice(&body_bytes).unwrap();
    Ok(response)
}

#[get("/api/v1/system/containers")]
async fn v1_system_containers(data: &State<Data>) -> Value {
    let path = "/containers/json";
    let uri = Uri::new(DOCKER_SOCKET, path).into();   
    let docker_response = data.docker.get(uri).await.unwrap();
    let body_bytes = hyper::body::to_bytes(docker_response.into_body()).await.unwrap();

    let response: Value = serde_json::from_slice(&body_bytes).unwrap();

    let containers_array = future::try_join_all(
        response
	    .as_array()
	    .unwrap_or(&vec![])
	    .iter()
	    .map(|container| {

		let container_id = container["Id"].as_str().unwrap_or_default();

		let container_info = get_container_info(data, container_id);

		container_info
	    }))
	.await

	.unwrap();


    let containers_response = containers_array
        .iter()
        .map(|container| {

            let container_id = container["Id"].as_str().unwrap_or_default();

	    let container_info = container;

            (container_id.to_string(), container_info.clone())
        })
        .collect::<serde_json::Map<String, Value>>();

    serde_json::to_value(containers_response).unwrap()
}

#[launch]
async fn rocket() -> _ {
    let data: Data = Data {
	docker: Client::unix()
    };


    rocket::build().manage(data).mount("/", routes![v1_system_containers])
}

mod structs;

use rocket::State;
use structs::Data;
use hyper::{body::HttpBody, Client};
use hyperlocal::{UnixClientExt, Uri};
use tokio::io::{self, AsyncWriteExt as _};
use tokio::io::AsyncRead;
use std::error::Error;
use tokio::io::BufStream;
use std::any::Any;
use rocket::response::content;
use serde_json::Value;
use serde_json::Map;
use tokio::task;
use futures::future;

#[macro_use] extern crate rocket;

async fn get_container_info(data: &State<Data>, container_id: &str) -> Result<Value, Box<dyn Error + Send>> {
    
    let url = Uri::new("/var/run/docker.sock", format!("/containers/{}/json", container_id).as_str()).into();   

    let mut response = data.docker.get(url).await.unwrap();

    let buf = hyper::body::to_bytes(response).await.unwrap();
    let res_json_str = std::str::from_utf8(&buf).unwrap();

    let res_data: Value = serde_json::from_str(res_json_str).unwrap();
    Ok(res_data)
}

#[get("/api/v1/system/containers")]
async fn v1_system_containers(data: &State<Data>) -> Value {


    let url = Uri::new("/var/run/docker.sock", "/containers/json").into();   

    let mut response = data.docker.get(url).await.unwrap();

    let buf = hyper::body::to_bytes(response).await.unwrap();
    let res_json_str = std::str::from_utf8(&buf).unwrap();
    // //let body: Any = serde_json::from_slice(&buf).unwrap();
    // let res_json: Value = serde_json::from_str(res_json_str).unwrap();
    // let res_json_arr = res_json.as_array();
    // let res_json_object = Map::<String, Value>::new();
    // for container in res_json_arr {
    // 	res_json_object.insert(container.get("Id").unwrap().to_string(), serde_json::to_value(container).unwrap());
    // }

    // Deserialize the JSON data into a Value
    let res_data: Value = serde_json::from_str(res_json_str).unwrap();

    let container_json_array = future::try_join_all(
	res_data
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


    // Create a custom JSON object where each container ID maps to its corresponding container object
    let custom_json_object = container_json_array
        .iter()
        .map(|container| {

            let container_id = container["Id"].as_str().unwrap_or_default();

	    let container_info = container;

            (container_id.to_string(), container_info.clone())
        })
        .collect::<serde_json::Map<String, Value>>();
    serde_json::to_value(custom_json_object).unwrap()
// Create a vector of tasks to process each container asynchronously
}

#[launch]
async fn rocket() -> _ {
    let data: Data = Data {
	docker: Client::unix()
    };


    rocket::build().manage(data).mount("/", routes![v1_system_containers])
}

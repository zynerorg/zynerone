use crate::structs::Data;
use hyperlocal::Uri;
use rocket::State;
use serde_json::Value;
use std::error::Error;

pub async fn get(data: &State<Data>, container_id: &str) -> Result<Value, Box<dyn Error + Send>> {
    let path = &format!("/containers/{}/json", container_id);
    let uri = Uri::new(data.docker_socket, path).into();
    let docker_response = data.docker.get(uri).await.unwrap();    
    let body_bytes = hyper::body::to_bytes(docker_response.into_body()).await.unwrap();

    let response: Value = serde_json::from_slice(&body_bytes).unwrap();
    Ok(response)
}

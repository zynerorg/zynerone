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

#[macro_use] extern crate rocket;

#[get("/api/containers")]
async fn index(data: &State<Data>) -> Value {


    let url = Uri::new("/var/run/docker.sock", "/containers/json").into();   

    let mut response = data.docker.get(url).await.unwrap();

    let buf = hyper::body::to_bytes(response).await.unwrap();
    let res_json = std::str::from_utf8(&buf).unwrap();
    //let body: Any = serde_json::from_slice(&buf).unwrap();
    serde_json::from_str(res_json).unwrap()
}

#[launch]
async fn rocket() -> _ {
    let data: Data = Data {
	docker: Client::unix()
    };


    rocket::build().manage(data).mount("/", routes![index])
}

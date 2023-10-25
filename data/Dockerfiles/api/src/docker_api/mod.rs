use hyperlocal::{
    Uri,
    UnixConnector
};
use hyper::{
    Request,
    Method,
    Body,
    Client
};
use serde_json::Value;
use serde::{
    Serialize,
    Deserialize
};
use std::error::Error;

#[derive(Serialize, Deserialize)]
struct CreateExec {
    AttachStdin: bool,
    AttachStdout: bool,
    AttachStderr: bool,
    DetachKeys: &'static str,
    Tty: bool,
    Cmd: Vec<String>,
    Env: Vec<String>
}

#[derive(Serialize, Deserialize)]
struct StartExec {
    Detach: bool,
    Tty: bool,
    ConsoleSize: Vec<i32>
}

pub async fn container_exec(client: &Client<UnixConnector>, container: &str, command: Vec<String>, env: Option<Vec<String>>) -> Result<String, Box<dyn Error>> {
    let url = Uri::new("/var/run/docker.sock", &format!("/containers/{}/exec", container));

    let create_exec = CreateExec {
	AttachStdin: false,
	AttachStdout: true,
	AttachStderr: true,
	DetachKeys: "ctrl-p,ctrl-q",
	Tty: false,
	Cmd: command,
	Env: env.unwrap_or([].to_vec()),
    };
    // println!("{}", req_body_str);

    let req_body_str = serde_json::to_string(&create_exec).unwrap();
    let req = Request::builder()
        .method(Method::POST)
        .uri(url)
        .header("Content-Type", "application/json")
        .body(Body::from(req_body_str))
        .expect("request builder");
    let response = client.request(req).await.unwrap();

    let buf = hyper::body::to_bytes(response).await.unwrap();
    let res_json_str = std::str::from_utf8(&buf).unwrap();
    //let res_json_obj = serde_json::to_value(res_json_str).unwrap();

    let res_json_obj: Value = serde_json::from_str(res_json_str).unwrap();
    let obj = res_json_obj.as_object();
    let id = &obj.expect("id").get("Id");

    let url = Uri::new("/var/run/docker.sock", &format!("/exec/{}/start", id.unwrap().to_string().replace("\"", "")));
    let start_exec = StartExec {
	Detach: false,
	Tty: false,
	ConsoleSize: [
	    80,
	    64
	].to_vec()
    };
    let req_body_str = serde_json::to_string(&start_exec).unwrap();
    // println!("{}", req_body_str);
    let req = Request::builder()
        .method(Method::POST)
        .uri(url)
        .header("Content-Type", "application/json")
        .body(Body::from(req_body_str))
        .expect("request builder");
    let response = client.request(req).await.unwrap();

    let buf = hyper::body::to_bytes(response).await.unwrap();
    let res_str = std::str::from_utf8(&buf).unwrap();
    Ok(res_str.to_string())

}

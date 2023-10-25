use rocket::{
    State,
    Rocket,
    Build,
    serde::{
	Deserialize,
	json::Json
    }
};
use crate::docker_api::container_exec;
use crate::structs::Data;
use crate::route_url;

#[derive(Deserialize)]
#[serde(crate = "rocket::serde")]
struct DiskReq {
  dir: String
}

#[post("/<container>/disk", format = "application/json", data = "<req_json>")]
async fn disk(data: &State<Data>, container: &str, req_json: Json<DiskReq>) -> String {
    let dir = &req_json.dir.as_str().replace("'", "'\\''");
    let mut command = r#"/bin/sh -c"#;
    let mut command = command.split(" ").map(|s| s.to_string());
    let mut command: Vec<String> = command.collect::<Vec<String>>();
    command.push(format!(r#"""/bin/df -H '{}' | /usr/bin/tail -n1 | /usr/bin/tr -s [:blank:] | /usr/bin/tr ' ' ','"""#, dir));

    println!("{:?}", command);
    let ret = container_exec(&data.docker, container, command, None).await.unwrap();
    ret.to_string()
}

pub fn routes(rocket: Rocket<Build>, base_url: &str) -> Rocket<Build> {
    rocket.mount(route_url!(base_url, "/"), routes![disk])
}

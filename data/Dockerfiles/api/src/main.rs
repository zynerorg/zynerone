mod structs;
mod routes;
mod helpers;
mod macros;
mod docker_api;

use rocket::{
    Build,
    Rocket,
};
use structs::Data;
use hyper::{Client};
use hyperlocal::{UnixClientExt};

#[macro_use] extern crate rocket;

#[launch]
async fn rocket() -> Rocket<Build> {
    let data: Data = Data {
	docker: Client::unix(),
	docker_socket: "/var/run/docker.sock"
    };
    let rocket = rocket::build();
    let rocket = routes::routes(rocket, "/");
    let rocket = rocket.manage(data);
    rocket
}

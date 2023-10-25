mod get;
mod get_specific;
mod start;
mod stop;
mod restart;
mod disk;

use rocket::{
    Rocket,
    Build,
};
use crate::route_url;

pub fn routes(rocket: Rocket<Build>, base_url: &str) -> Rocket<Build> {
    let rocket = get::routes(rocket, route_url!(base_url, "/containers"));
    let rocket = get_specific::routes(rocket, route_url!(base_url, "/containers"));
    let rocket = start::routes(rocket, route_url!(base_url, "/containers"));
    let rocket = stop::routes(rocket, route_url!(base_url, "/containers"));
    let rocket = restart::routes(rocket, route_url!(base_url, "/containers"));
    let rocket = disk::routes(rocket, route_url!(base_url, "/containers"));
    rocket
}

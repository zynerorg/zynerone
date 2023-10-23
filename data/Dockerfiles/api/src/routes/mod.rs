pub mod api;

use rocket::Rocket;
use rocket::Build;

pub fn routes(rocket: Rocket<Build>, base_url: &str) -> Rocket<Build> {
    api::routes(rocket, &format!("{}/", base_url))
}

pub mod containers;

use rocket::Rocket;
use rocket::Build;

pub fn routes(rocket: Rocket<Build>, base_url: &str) -> Rocket<Build> {
    containers::routes(rocket, &format!("{}/{}/", base_url, "system"))
}

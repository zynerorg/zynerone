pub mod v1;

use rocket::Rocket;
use rocket::Build;

pub fn routes(rocket: Rocket<Build>, base_url: &str) -> Rocket<Build> {
    v1::routes(rocket, &format!("{}/{}/", base_url, "api"))
}

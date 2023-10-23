pub mod system;

use rocket::Rocket;
use rocket::Build;

pub fn routes(rocket: Rocket<Build>, base_url: &str) -> Rocket<Build> {
    system::routes(rocket, &format!("{}/{}/", base_url, "v1"))
}

use hyper::Client;
use hyperlocal::UnixConnector;

pub struct Data {
    pub docker: Client<UnixConnector>,
    pub docker_socket: &'static str 
}

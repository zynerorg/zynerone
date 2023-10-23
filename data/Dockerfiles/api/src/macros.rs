
#[macro_export]
macro_rules! route_url {
    ("" , $path:expr) => {
        &format!("{}", $path)
    };
    ($base:expr, $path:expr) => {{
        let mut base = $base.to_string();
        let path = $path.to_string();
        if !base.ends_with('/') && !path.starts_with('/') {
            base.push('/');
        }
        &format!("{}{}", base, path)
    }};
}

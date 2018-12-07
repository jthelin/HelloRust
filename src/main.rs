use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();

    let name: &str;
    if args.len() > 1 {
        name = &args[1];
    } else {
        name = "World";
    }

    println!("Hello, {}! Greetings from Rust.", name);
}

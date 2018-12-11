## Build with command [from repo root directory]:
# docker build --tag hellorust . --file ./Dockerfile
##
## Run with command:
# docker run --rm -it hellorust cargo run --release Jorgen
##

# Rust toolchain container, to build and run a rust application.

# Latest rust stable release image.
# https://hub.docker.com/_/rust/
FROM rust:latest

# Latest rust nightly release image.
# https://hub.docker.com/r/rustlang/rust/
## FROM rustlang/rust:nightly

ARG APP_HOME_DIR=/home/app

WORKDIR $APP_HOME_DIR
COPY . .

RUN rustc --version && cargo --version && rustup --version

RUN cargo install --path .

CMD cargo run

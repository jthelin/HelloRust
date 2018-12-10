## Build with command [from repo root directory]:
# docker build --tag hellorust . --file ./Dockerfile
##
## Run with command:
# docker run --rm -it hellorust cargo run --release Jorgen
##

# Rust toolchain container, to build and run a rust application.

FROM rust:latest

ARG APP_HOME_DIR=/home/app

WORKDIR $APP_HOME_DIR
COPY . .

RUN rustc --version && cargo --version && rustup --version

RUN cargo install --path .

CMD cargo run

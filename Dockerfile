FROM rust:latest as target
LABEL org.opencontainers.image.authors="Insik Park <parki@insikpark.com>"
LABEL stage=target

RUN	cargo install trunk
RUN	rustup target add wasm32-unknown-unknown

EXPOSE 8080/tcp

CMD ["/bin/sh"]

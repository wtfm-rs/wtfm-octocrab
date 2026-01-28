all:	install test

install:
	rustup update
	rustup toolchain install stable
	rustup override set stable
	rustc --verbose --version
	cargo --verbose --version
	cargo add --git https://github.com/ontouchstart/octocrab --branch main
	cargo add tower-http
	cargo add --dev chrono
	cargo add --dev http
	cargo add --dev serde
	cargo add --dev serde_json
	cargo add --dev tokio --features macros,rt-multi-thread,time
	cargo add --dev tokio-test wiremock

test:
	cargo test --tests

doc:
	cargo doc --open

clean:
	cargo clean

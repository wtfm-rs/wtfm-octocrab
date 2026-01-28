all:	install test

install:
	rustup update
	rustup --verbose --version
	rustup toolchain install stable
	rustup override set stable
	cargo add octocrab
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

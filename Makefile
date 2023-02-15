rust-version:
	@echo "Rust command-line utility versions:"
	rustc --version 			#rust compiler
	cargo --version 			#rust package manager
	rustfmt --version			#rust code formatter
	rustup --version			#rust toolchain manager
	clippy-driver --version		#rust linter

format:
	@echo "Formatting with cargo"
	cargo fmt --quiet

lint:
	@echo "Linting with cargo"
	@rustup component add clippy 2> /dev/null
	cargo clippy --quiet

test:
	@echo "Testing with cargo"
	cargo test --quiet

check-gpu-linux:
	sudo lshw -C display

release:
	@echo "Releasing with cargo"
	cargo build --release

all: format lint test

PHONY: build run clean buildk

build:
	cargo build

buildk:
	make -C src/kernel

run: ./target/debug/arm-cca-example
	sudo $^ -r

clean:
	cargo clean

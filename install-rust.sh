#!/usr/bin/env bash

echo "-- Installing rustup."
# https://www.rust-lang.org/tools/install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

CARGO_BIN_DIR=${HOME}/.cargo/bin

echo "-- Adding ${CARGO_BIN_DIR} to PATH."

export PATH=${CARGO_BIN_DIR}:${PATH}

echo "##vso[task.prependpath]${CARGO_BIN_DIR}"

echo PATH = "${PATH}"

echo "-- Show rustup environment settings."
"${CARGO_BIN_DIR}/rustup" show

echo "-- Show rust version info"
rustc --version && cargo --version && rustup --version

RUSTUP_VERSION=$("${CARGO_BIN_DIR}/rustup" --version)
echo "-- Finished installing rustup environment version = ${RUSTUP_VERSION}"

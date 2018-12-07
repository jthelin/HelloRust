#!/usr/bin/env bash

echo "Installing rustup."

# https://www.rust-lang.org/tools/install

curl https://sh.rustup.rs -sSf | sh -s -- -y

CARGO_BIN_DIR=${HOME}/.cargo/bin

echo "Adding ${CARGO_BIN_DIR} to PATH."

export PATH=${CARGO_BIN_DIR}:${PATH}

echo "##vso[task.prependpath]${CARGO_BIN_DIR}"

echo PATH = ${PATH}

echo "Show rustup environment settings."
${CARGO_BIN_DIR}/rustup show

RUSTUP_VERSION=`${CARGO_BIN_DIR}/rustup --version`
echo "Finished installing rustup environment version = ${RUSTUP_VERSION}"

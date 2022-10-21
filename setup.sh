#!/bin/bash
sudo apt install make clang pkg-config libssl-dev libclang-dev build-essential git curl ntp jq llvm tmux htop screen unzip cmake -y
curl -s https://raw.githubusercontent.com/f5nodes/root/main/install/rust.sh | bash &>/dev/null
source $HOME/.cargo/env
source $HOME/.profile
source $HOME/.bashrc
sleep 1
git clone https://github.com/Manta-Network/manta-rs.git
cd manta-rs
cargo run --release --package manta-trusted-setup --all-features --bin groth16_phase2_client register
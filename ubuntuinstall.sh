#!/usr/bin/env bash

sudo DEBIAN_FRONTEND=noninteractive apt full-upgrade -yq
sudo DEBIAN_FRONTEND=noninteractive apt install -y git docker.io docker-compose-v2 build-essential python3-dev python3-pip python3-venv tmux cron iputils-ping net-tools unzip
sudo usermod -aG docker $USER
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install --upgrade pip
pip install pandas -q
sudo reboot
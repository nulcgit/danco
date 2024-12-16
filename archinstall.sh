#!/usr/bin/env bash

yes | sudo pacman -Syu
yes | sudo pacman -S base-devel git docker docker-compose python3 python-pip tmux cron iputils net-tools unzip
sudo usermod -aG docker $USER
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install --upgrade pip
pip install pandas -q
sudo reboot
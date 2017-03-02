#!/bin/bash -e

echo "================= Installing SQLite 3.19.2 ==================="
#sudo apt-get install -y sqlite3 libsqlite3.8.11.1-dev

sudo add-apt-repository ppa:jonathonf/backports

sudo apt-get update && sudo apt-get install sqlite3

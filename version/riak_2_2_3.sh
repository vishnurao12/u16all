#!/bin/bash -e

echo "================= Installing Riak 2.2.3  ==================="

# Install dependencies
sudo apt-get install -y \
  build-essential \
  libc6-dev-i386 \
  libncurses5-dev \
  openssl \
  libssl-dev \
  fop \
  xsltproc \
  unixodbc-dev \
  libqt4-opengl-dev \
  libpam-dev \
  logrotate

# Install Riak
#wget http://s3.amazonaws.com/downloads.basho.com/riak/2.2/2.2.3/ubuntu/trusty/riak_2.2.3-1_amd64.deb
#sudo dpkg -i riak*.deb
#rm riak*.deb

  # libwxbase2.8 \
  # libwxgtk2.8-dev \


curl -s https://packagecloud.io/install/repositories/basho/riak/script.deb.sh | sudo bash
sudo apt-get install riak=2.2.3-1

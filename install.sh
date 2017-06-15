#!/bin/bash -e

sudo chmod 1777 /tmp

#for file in /u16all/version/*.sh;
#do
#  . "$file"
#done
. /u16all/version/mysql.sh

mkdir -p /var/lib/neo4j/conf
cd /u16all && cp -rf neo4j-server.properties /var/lib/neo4j/conf/

echo "================= Adding mysql cnf ==================="
cd /u16all && cp -rf my.cnf /etc/mysql/my.cnf

echo "================= Adding PostgreSQL cnf ==================="
cd /u16all && cp -rf pg_hba.cnf /etc/postgresql/9.6/main/pg_hba.conf

echo "================= Adding shippable_service ==================="
mkdir -p /usr/local/bin/shippable_services
cp /u16all/services/* /usr/local/bin/shippable_services
mv /usr/local/bin/shippable_services/shippable_service /usr/local/bin/shippable_service

echo "================= Adding packages for shippable_service =================="
apt install -y netcat

echo "================= Cleaning package lists ==================="
apt-get clean
apt-get autoclean
apt-get autoremove

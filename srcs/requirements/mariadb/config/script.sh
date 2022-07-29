#i!/bin/bash

echo "creating DB..."
envsubst < /var/init.sql > /var/init_env.sql
service mysql start
mysql -D mysql < /var/init_env.sql | true
touch /var/lib/mysql/.db_create
service mysql stop | echo -n ""
exec mysqld_safe

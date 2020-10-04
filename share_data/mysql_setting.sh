#!bin/bash

if [ -e /etc/my.cnf.org ]; then
  echo "backup is exists" 1>&2
else
  sudo cp /etc/my.cnf /etc/my.cnf.org
fi

sudo cp /share_data/my.cnf.skip /etc/my.cnf
sudo systemctl restart mysqld

mysql -uroot -e "use mysql; UPDATE user SET authentication_string=password('root'); flush privileges;"

sudo cp /share_data/my.cnf.costom /etc/my.cnf
sudo systemctl restart mysqld


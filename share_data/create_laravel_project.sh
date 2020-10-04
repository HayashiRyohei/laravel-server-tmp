#!bin/bash

if [ $# -ne 2 ]; then
  echo 'bash create_laravel_project project_name port' 1>&2
  exit -1
fi

if [ -d $1 ]; then
  echo "${1} is exists" 1>&2
  exit
fi

composer create-project --prefer-dist laravel/laravel $1 5.5

# nginxの設定ファイルを自動作成
cp tmp_nginx_laravel.conf $1.conf
sed -i -e "s/{project_name}/${1}/g" $1.conf
sed -i -e "s/{port}/${2}/g" $1.conf
sudo mv $1.conf /etc/nginx/conf.d/$1.conf

# nginxを再起動
sudo systemctl restart nginx

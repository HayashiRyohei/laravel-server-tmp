# Laravel + Nginx環境構築プロジェクト

Vagrant上にLaravelとNginxの環境を構築するためのリポジトリ.

## 初回起動

```
vagrant up
```

```
vagrant ssh
```

```
cd /share_data/ansible_data/playbook
ansible-playbook main.yml
```

```
cd /share_data
bash mysql_setting.sh
mysql -uroot -p
Enter password: root
mysql> SET password FOR root@localhost=password('xxxxxx');
mysql> quit
```

```
cd /share_data
bash get_composer.sh
```

## プロジェクト作成

```
bash create_laravel_project.sh [prpject_name] [port]
```

Laravelの環境ファイルを更新
```
mysql -uroot -p
Enter password: root
mysql> CREATE USER 'username'@'hostname' IDENTIFIED BY 'password';
mysql> CREATE DATABASE db_name;
mysql> GRANT ALL ON db_name.* TO 'username'@'hostname'
mysql> flush privileges;
mysql> quit

DB_DATABASE=homestead => 
DB_USERNAME=homestead => 
DB_PASSWORD=secret => 
```



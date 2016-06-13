#!/bin/sh

#削除
mysql -uroot -proot -e "drop database board;"

#作成
mysql -uroot -proot -e "create database board character set utf8;"

#list作成
mysql -uroot -proot -e "create table list(id MEDIUMINT NOT NULL AUTO_INCREMENT
, name varchar(256),massage varchar(256), ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  dt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, PRIMARY KEY (id);
)"

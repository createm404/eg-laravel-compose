CREATE USER 'repluser'@'%' IDENTIFIED BY 'replsecret';
GRANT REPLICATION SLAVE ON *.* TO 'repluser'@'%';
CREATE DATABASE primary_db;


GRANT ALL ON primary_db.* to 'repluser'@'%' IDENTIFIED BY 'replsecret';
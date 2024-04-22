GRANT ALL ON primary_db.* to 'repluser'@'%' IDENTIFIED BY 'replsecret';

CHANGE MASTER TO
  MASTER_HOST='mariadb',
  MASTER_USER='repluser',
  MASTER_PASSWORD='replsecret',
  MASTER_PORT=3306,
  MASTER_CONNECT_RETRY=10;
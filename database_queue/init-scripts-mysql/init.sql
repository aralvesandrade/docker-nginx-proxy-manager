-- npm
CREATE DATABASE npm;
CREATE USER 'npm'@'localhost' IDENTIFIED BY 'npm';
GRANT ALL PRIVILEGES ON *.* TO 'npm'@'localhost';
FLUSH PRIVILEGES;

-- ecom
CREATE DATABASE ecom_db;
CREATE USER 'ecom_user'@'localhost' IDENTIFIED BY '123_password';
GRANT ALL PRIVILEGES ON *.* TO 'ecom_user'@'localhost';
FLUSH PRIVILEGES;
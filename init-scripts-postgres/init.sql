-- sonar
CREATE DATABASE sonar;
CREATE USER sonar WITH PASSWORD 'sonar';
GRANT ALL PRIVILEGES ON DATABASE sonar TO sonar;
\c sonar
GRANT ALL PRIVILEGES ON SCHEMA public TO sonar;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO sonar;
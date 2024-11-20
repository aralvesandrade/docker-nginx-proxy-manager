Criar network

```
docker network create my-network
```

Executar comandos docker compose

```
docker compose -f docker-compose.yml -f docker-compose.database.yml up -d
docker compose -f docker-compose.yml -f docker-compose.database.yml down
#ou
docker compose -f docker-compose.yml -f docker-compose.database.yml down -v
```

Acessar postgres

```
docker exec -it postgres bash
psql -h localhost -p 5432 -U postgres
# Execute query
select now();
# List of databases
\l
# Connect to database
\c sonar
# List of relations (tables)
\dt
```

Acessar mysql

```
docker exec -it mysql bash
mysql -h localhost -P 3306 -u root -p
# Execute query
select now();
# List of databases
show databases;
# Connect to database
use npm;
# List of relations (tables)
show tables;
```

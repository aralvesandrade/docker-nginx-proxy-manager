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

Exemplo de INSERT de proxy no NPM

```
INSERT INTO npm.proxy_host
(created_on, modified_on, owner_user_id, domain_names, forward_host, forward_port, certificate_id, ssl_forced, meta, locations, advanced_config)
VALUES(now(), now(), 1, '["ipool-api.aralvesandrade.duckdns.org"]', 'ipool-api', 5001, 2, 1, '{"nginx_err": null, "nginx_online": true, "dns_challenge": false, "letsencrypt_agree": false}', '[]', '');
```
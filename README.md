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
VALUES(now(), now(), 1, '["npm.aralvesandrade.duckdns.org"]', 'nginx-proxy-manager', 81, 2, 1, '{"nginx_err": null, "nginx_online": true, "dns_challenge": false, "letsencrypt_agree": false}', '[]', '');

INSERT INTO npm.proxy_host
(created_on, modified_on, owner_user_id, domain_names, forward_host, forward_port, certificate_id, ssl_forced, meta, locations, advanced_config)
VALUES(now(), now(), 1, '["grafana.aralvesandrade.duckdns.org"]', 'grafana', 3000, 2, 1, '{"nginx_err": null, "nginx_online": true, "dns_challenge": false, "letsencrypt_agree": false}', '[]', '');

INSERT INTO npm.proxy_host
(created_on, modified_on, owner_user_id, domain_names, forward_host, forward_port, certificate_id, ssl_forced, meta, locations, advanced_config)
VALUES(now(), now(), 1, '["sonarqube.aralvesandrade.duckdns.org"]', 'sonarqube', 9000, 2, 1, '{"nginx_err": null, "nginx_online": true, "dns_challenge": false, "letsencrypt_agree": false}', '[]', '');

INSERT INTO npm.proxy_host
(created_on, modified_on, owner_user_id, domain_names, forward_host, forward_port, certificate_id, ssl_forced, meta, locations, advanced_config, forward_scheme)
VALUES(now(), now(), 1, '["portainer.aralvesandrade.duckdns.org"]', 'portainer', 9443, 2, 1, '{"nginx_err": null, "nginx_online": true, "dns_challenge": false, "letsencrypt_agree": false}', '[]', '', 'https');

INSERT INTO npm.proxy_host
(created_on, modified_on, owner_user_id, domain_names, forward_host, forward_port, certificate_id, ssl_forced, meta, locations, advanced_config)
VALUES(now(), now(), 1, '["ecom-api.aralvesandrade.duckdns.org"]', 'ecom-api', 5001, 2, 1, '{"nginx_err": null, "nginx_online": true, "dns_challenge": false, "letsencrypt_agree": false}', '[]', '');

INSERT INTO npm.proxy_host
(created_on, modified_on, owner_user_id, domain_names, forward_host, forward_port, certificate_id, ssl_forced, meta, locations, advanced_config)
VALUES(now(), now(), 1, '["ipool-api.aralvesandrade.duckdns.org"]', 'ipool-api', 5001, 2, 1, '{"nginx_err": null, "nginx_online": true, "dns_challenge": false, "letsencrypt_agree": false}', '[]', '');

INSERT INTO npm.proxy_host
(created_on, modified_on, owner_user_id, domain_names, forward_host, forward_port, certificate_id, ssl_forced, meta, locations, advanced_config)
VALUES(now(), now(), 1, '["prometheus.aralvesandrade.duckdns.org"]', 'prometheus', 9090, 2, 1, '{"nginx_err": null, "nginx_online": true, "dns_challenge": false, "letsencrypt_agree": false}', '[]', '');

INSERT INTO npm.proxy_host
(created_on, modified_on, owner_user_id, domain_names, forward_host, forward_port, certificate_id, ssl_forced, meta, locations, advanced_config)
VALUES(now(), now(), 1, '["uptime.aralvesandrade.duckdns.org"]', 'uptime-kuma', 3001, 2, 1, '{"nginx_err": null, "nginx_online": true, "dns_challenge": false, "letsencrypt_agree": false}', '[]', '');
```
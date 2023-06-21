# Odoo 16

## User Default Login Bitnami Odoo:

- user: `user@example.com`
- password: `bitnami`

## Running Docker

`docker-compose up -d`

## Stop Docker

- If want to reuse the container `docker stop <container_id>`
- If delete permanent container `docker-compose down`

## Purge Docker Container

- `docker 

## Dependencies (optional)

- `apt install build-essential`
- `apt install wheels`
- `wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.bullseye_arm64.deb`
- `apt install ./wkhtmltox_0.12.6.1-2.bullseye_arm64.deb`
- `apt install libsasl2-dev python-dev libldap2-dev libssl-dev`

## Setup Postgres

- `docker exec -it <container_id> psql -U postgres`
- look user `\du`, look database `\l`, to quit `\q`

## Create New Login/New Database (from Odoo)

- Click `manage database`
- Master Password `bitnami`

## Log tailing

`docker logs --folow <container_id>`

## Reference:

https://linuxhint.com/install-odoo-15-ubuntu-22-04/


# Odoo 16

Tested on Macbook ARM M1 processor, as per this commit.
- Python 3.11.9
- Postgres 15
- Odoo 16

## Setting 
- Change env-example to .env
- etc/odoo.conf is needed, to point to /mnt/extra-addons. Check default bitnami for more option. unfortunately there is nothing like odoo cli.
- add your addons to addons folder. Create one on root app dir

## User Default Login Bitnami Odoo:

- user: `user@example.com`
- password: `bitnami`

## Running Docker

`docker-compose up -d`

open `localhost:8069/web`

## Stop Docker

- Stop to reuse later `docker stop <container_id>`
- Delete permanent `docker-compose down`

## Purge Docker Container

- `docker container rm <image id>`
- `docker image rm <image id>`

## Dependencies (optional: inside "docker exec")

Only need this if odoo want wkhtmltopdf

- `apt install build-essential`
- `apt install wheels`
- `wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.bullseye_arm64.deb`
- `apt install ./wkhtmltox_0.12.6.1-2.bullseye_arm64.deb`
- `apt install libsasl2-dev python-dev libldap2-dev libssl-dev`

## Setup Postgres

- `docker exec -it <container_id> psql -U postgres`
- look user `\du`, look database `\l`, to quit `\q`
- select database `\c`
- look table `\dt`

Or Just download DBeaver and connect
as per env-example
host:localhost
port:54321
username:bn_odoo
password:bitnami_odoo

## Create New Login/New Database (from Odoo)

- Click `manage database`
- Master Password `bitnami`

## Log tailing

- `docker logs --folow <container_id>`

## Build with no cache

- `docker-compose build --no-cache`

## Reference:
https://linuxhint.com/install-odoo-15-ubuntu-22-04/


FROM docker.io/bitnami/odoo:16

# Preinstall before installing requirements
RUN apt update && apt install libsasl2-dev python3 libldap2-dev libssl-dev libpq-dev build-essential gcc -y

# Installing Required Dependency
COPY requirements.txt /tmp/requirements.txt
WORKDIR /tmp
RUN pip3 install -r requirements.txt

# Your optional dependency
RUN pip3 install pandas python-jose pyjwt python-dotenv 
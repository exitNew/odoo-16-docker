FROM docker.io/bitnami/odoo:16

# Preinstall before installing requirements
RUN apt update && apt install build-essential wget git python3-pip python3-dev python3-wheel libfreetype6-dev libxml2-dev libzip-dev libsasl2-dev python3-setuptools libjpeg-dev zlib1g-dev libpq-dev libxslt1-dev libldap2-dev libtiff5-dev libopenjp2-7-dev -y 
RUN pip3 install wheel setuptools

# Installing Required Dependency
COPY requirements.txt /tmp/requirements.txt
WORKDIR /tmp
RUN pip3 install -r requirements.txt

# Installing Optional Dependency
RUN pip3 install pandas python-jose pyjwt python-dotenv

FROM docker.io/bitnami/odoo:16

# Preinstall before installing requirements
RUN apt update && apt install build-essential wget git python3-pip python3-dev python3-wheel libfreetype6-dev libxml2-dev libzip-dev libsasl2-dev python3-setuptools libjpeg-dev zlib1g-dev libpq-dev libxslt1-dev libldap2-dev libtiff5-dev libopenjp2-7-dev
RUN pip3 install wheel setuptools

# Installing Required Dependency
RUN pip3 install -r requirements.txt

# Installing Optional Dependency
RUN pip3 install pandas python-jose pyjwt python-dotenv


# Installing Wkhtmltopdf
## Set Environment directory
ENV DIR=/usr/local/bin/

## Change directory so that our commands run inside this new directory
WORKDIR $DIR

ENV WKHTML_VERSION 0.12.4

## Builds the wkhtmltopdf download URL based on version number above
ENV DOWNLOAD_URL "https://downloads.wkhtmltopdf.org/0.12/${WKHTML_VERSION}/wkhtmltox-${WKHTML_VERSION}_linux-generic-amd64.tar.xz" -L -o "wkhtmltopdf.tar.xz"

## Install dependencies
RUN apt-get update && apt-get install -y \
	curl libxrender1 libfontconfig libxtst6 xz-utils

## Download and extract wkhtmltopdf
RUN curl $DOWNLOAD_URL
RUN tar Jxvf wkhtmltopdf.tar.xz
RUN cp wkhtmltox/bin/wkhtmltopdf $DIR

ENTRYPOINT ["wkhtmltopdf"]

FROM docker.io/bitnami/odoo:16

# Preinstall before installing requirements
RUN apt update && apt install libsasl2-dev python-dev libldap2-dev libssl-dev build-essential gcc -y
RUN pip3 install wheel setuptools

# Installing Required Dependency
RUN pip3 install appdirs attrs Babel beautifulsoup4 cached-property certifi cffi chardet cryptography decorator defusedxml distlib docutils ebaysdk filelock freezegun gevent greenlet idna isodate Jinja2 libsass lxml MarkupSafe num2words numpy ofxparse pandas passlib Pillow platformdirs polib psutil psycopg2-binary pyasn1 pyasn1-modules pycparser pydot pyOpenSSL pyparsing PyPDF2 pyserial python-dateutil python-ldap python-stdnum pytz pyusb qrcode reportlab requests requests-toolbelt six soupsieve tzdata urllib3 vobject Werkzeug xlrd XlsxWriter xlwt zeep zope.event zope.interface

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

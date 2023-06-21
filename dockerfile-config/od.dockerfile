FROM docker.io/bitnami/odoo:16

#COPY requirements.txt /tmp/requirements.txt
#WORKDIR /tmp
#RUN pip3 install -r requirements.txt

RUN apt update && apt install libsasl2-dev python-dev libldap2-dev libssl-dev build-essential gcc -y
RUN pip3 install wheel setuptools
RUN pip3 install appdirs attrs Babel beautifulsoup4 cached-property certifi cffi chardet cryptography decorator defusedxml distlib docutils ebaysdk filelock freezegun gevent greenlet idna isodate Jinja2 libsass lxml MarkupSafe num2words numpy ofxparse pandas passlib Pillow platformdirs polib psutil psycopg2-binary pyasn1 pyasn1-modules pycparser pydot pyOpenSSL pyparsing PyPDF2 pyserial python-dateutil python-ldap python-stdnum pytz pyusb qrcode reportlab requests requests-toolbelt six soupsieve tzdata urllib3 vobject Werkzeug xlrd XlsxWriter xlwt zeep zope.event zope.interface
RUN pip3 install pandas python-jose pyjwt python-dotenv 
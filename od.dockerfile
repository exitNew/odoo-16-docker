FROM docker.io/bitnami/odoo:16
RUN pip3 install wheel setuptools
RUN pip3 install pandas python-jose pyjwt python-dotenv 

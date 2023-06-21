FROM docker.io/bitnami/odoo:16

#COPY requirements.txt /tmp/requirements.txt
#WORKDIR /tmp
#RUN pip3 install -r requirements.txt

RUN pip3 install wheel setuptools
RUN pip3 install pandas python-jose pyjwt python-dotenv 

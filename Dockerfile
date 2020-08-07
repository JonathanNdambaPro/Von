FROM python:3.7.3-alpine

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY requirements.txt .
COPY templates /opt/

RUN apt-get update -y &&\
apt-get install python3-pip -y &&\
apt-get install gunicorn3 -y &&\
pip3 install -r requirements.txt


CMD ["gunicorn3", Von_FLASK.py", "0.0.0.0:8000", "app:app", "--workers=5"]
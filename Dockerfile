FROM python:3.10

ADD . /renogy-bt

WORKDIR /renogy-bt

RUN apt-get update && apt-get install python3-dbus cmake build-essential libdbus-glib-1-dev libgirepository1.0-dev python3-gi -y

RUN python3 -m venv venv
RUN venv/bin/pip install -r requirements.txt

CMD ["venv/bin/python", "example.py"]

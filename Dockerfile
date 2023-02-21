FROM python:3.8.2-slim-buster

ENV PYTHONUNBUFFERED 1

LABEL MAINTAINER wisrovi.rodriguez@gmail.com

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt

COPY src /app


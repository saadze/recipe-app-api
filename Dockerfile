FROM python:3.9.6-alpine3.14
LABEL org.opencontainers.image.authors="Saad Benaicha"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user

USER user
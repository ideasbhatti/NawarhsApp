FROM python:3.7-alpine
# MAINTAINER Shrawan Kumar Neupane

ENV PYTHONUNBUFFERED 1

# ENV PATH /usr/local/bin:$PATH

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

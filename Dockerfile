FROM python:3.9-alpine3.16
RUN apk add  postgresql-client build-base postgresql-dev
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN adduser --disabled-password service-user
USER service-user

COPY service /service
WORKDIR /service
EXPOSE 8000







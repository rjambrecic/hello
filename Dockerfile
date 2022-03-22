FROM python:3.7-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /you_can_do_it

COPY Pipfile Pipfile.lock /you_can_do_it/
RUN pip install pipenv && pipenv install --system

COPY . /you_can_do_it/


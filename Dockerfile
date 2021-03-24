FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /PRO

COPY Pipfile Pipfile.lock /PRO/
RUN pip install pipenv && pipenv install --system

COPY . /PRO/
FROM python:3.8.6-alpine

COPY ./requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

# working space
RUN mkdir /app
COPY ./project /app
WORKDIR /app

# environment setting
ENV PYTHONUNBUFFERED=1

FROM python:bullseye
MAINTAINER Behzad flask app

ENV PYTHONUNBUFFERED 1

COPY ./flask-app/requirements.txt /requirements.txt
RUN pip install -r /requirements.txt 

RUN mkdir /app
WORKDIR /app
COPY ./flask-app /app

RUN adduser --system user
USER user

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python2-dev build-essential
COPY ./basic-flask-app /app
WORKDIR /app
RUN pip2 install -r /app/requirements.txt
ENTRYPOINT ["python2"]
CMD ["routes.py"]
EXPOSE 80

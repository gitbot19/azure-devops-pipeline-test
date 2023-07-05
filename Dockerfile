FROM ubuntu:22.10
RUN apt-get update -y
RUN apt-get install -y python3.10
RUN apt-get install -y python3-pip python2-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
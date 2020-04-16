FROM ubuntu:latest
MAINTAINER Raghav Agarwal "raghav.agarwal@capgemini.com"
RUN apt-get update -y && \
apt-get install -y python-pip python-dev build-essential
ADD . /flask-app
WORKDIR /flask-app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["flask-docker.py"]

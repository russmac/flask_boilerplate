# Use an official Python runtime as a parent image
FROM debian:latest
WORKDIR /app
ADD /data /app
RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN apt-get -y install curl
RUN apt-get -y install groff
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 4430
ENV ENVIRONMENT dev
ENV CLUSTER_NAME dev
ENV SERVICE_NAME server
CMD ["python3", "api.py"]

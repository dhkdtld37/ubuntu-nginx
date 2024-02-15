FROM ubuntu:22.04
RUN apt update -y
RUN apt install -y nginx
CMD nginx

FROM ubuntu:22.04
RUN apt update -y
RUN apt install -y nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


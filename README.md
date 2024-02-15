# ubuntu-nginx

## v 0.1.0 / IMG ubuntu 

### 1. Pull ubuntu

```bash
$ sudo docker pull ubuntu:22.04
```

### 2. Run ubuntu

```bash
$ sudo docker run -it -p 8001:80 --name ubuntu-nginx -d ubuntu:22.04

Unable to find image 'ubuntu:22.04' locally
22.04: Pulling from library/ubuntu
57c139bbda7e: Pull complete
Digest: sha256:e9569c25505f33ff72e88b2990887c9dcf230f23259da296eb814fc2b41af999
Status: Downloaded newer image for ubuntu:22.04
e65e3d9898482b4450ccfb5ad989dafe9491b37a2a919774fa347cdeed8387cb

$ sudo docker ps -a

CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS                     PORTS                                   NAMES
e65e3d989848   ubuntu:22.04   "/bin/bash"              9 seconds ago   Up 9 seconds               0.0.0.0:8001->80/tcp, :::8001->80/tcp   ubuntu-nginx
```

### 3. Install nginx

```bash
$ sudo docker exec -it parc02-ubuntu bash
```
```bash
/# apt update

/# apt install nginx
```
```bash
# nginx -v

nginx version: nginx/1.18.0 (Ubuntu)
```
```bash
/# service nginx status
 * nginx is not running

/# service nginx start
 * Starting nginx nginx                              [ OK ]

/# service nginx status
 * nginx is running
```

### 4. Create Dockerfile

```bash
 ~/code/ubuntu-nginx 
$ vi Dockerfile
```
```dockerfile
FROM ubuntu:22.04
RUN apt update -y
RUN apt install -y nginx
CMD nginx
```

### 5. Build Dokerfile

```bash
$ sudo docker build -t ubuntu-nginx:0.1.0 .
```

#### 출력화면
![image](https://github.com/dhkdtld37/ubuntu-nginx/assets/149128094/1678c534-73dc-4177-ac2d-14461be852d2)


### 6. Push docker hub

```bash
$ sudo docker login

$ sudo docker tag ubuntu-nginx:0.1.0 dhkdtld37/ubuntu-nginx:0.1.0

$ sudo docker push dhkdtld37/ubuntu-nginx:0.1.0
```

#### 레포 링크
- https://hub.docker.com/repository/docker/dhkdtld37/ubuntu-nginx/general

#### 레포 화면
![image](https://github.com/dhkdtld37/ubuntu-nginx/assets/149128094/f2d91306-890d-4742-8fa5-4020bd2cecae)



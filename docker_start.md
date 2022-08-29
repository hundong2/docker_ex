# 1. docker command 

## 1.1 docker command list

### 1.1.1 docker image build

```
docker build -t [name]:[tag] .
```

```bash
docker build -t hundong:latest .
```

### 1.1.2 docker image run 

```
docker run -p 3000:80 --rm --name [Container Name] [Name]:[Tag]
```

```bash
docker run -p 3000:80 --rm --name node_js hundong:latest
```

#### 1.1.2.1 Docker run bind/mount   

```bash
docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v $(pwd):/app -v /app/node_modules feedback-app:latest
```

#### --rm 

- this container will be removed after stop it.

```bash
--rm 
```

#### --name 

- this containers set to call naming

```bash
--name node_js
```  

```bash
docker ps -a 
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                  NAMES
197758cf8346   hundong:latest   "docker-entrypoint.s…"   10 minutes ago   Up 10 minutes   0.0.0.0:3000->80/tcp   node_js
```

### 1.1.3 docker image remove

```bash
docker rmi [imgaeID or Name]
```

### 1.1.4 docker container remove 

```bash
docker rm [image ID] # remove container
or 
docker rm $(docker ps -qa) #all remvoe conatiner 
```

### 1.1.5 docker logs

- docker inner logging ( bash output )

```bash   
docker logs feedback-app
``` 

### 1.1.6 Docker environment setting 

- ".env" file using 

```bash 
docker run -d --rm -p 3000:8000 --env-file ./.env --name feedback-app -v feedback:/app/feedback -v "/Users/donghun2/docker_workspace/docker_ex/data-volumes-07-added-dockerignore:/app" -v /app/temp -v /app/node_modules feedback-app:env
```

- -e or --env option using 
```bash
docker run -d --rm -p 3000:8000 -e PORT=8000 --name feedback-app -v feedback:/app/feedback -v "/Users/donghun2/docker_workspace/docker_ex/data-volumes-07-added-dockerignore:/app" -v /app/temp -v /app/node_modules feedback-app:env
```

### 1.1.7 Docker Argument at that build time

[data-volumes-08](data-volumes-08-args-and-env/Dockerfile)

```bash
docker build -t feedback-node:dev --build-arg DEFAULT_PORT=8000 .
```

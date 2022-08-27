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

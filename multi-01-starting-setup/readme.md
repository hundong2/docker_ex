# Lecture 80. Multi 

## mongo db run

```bash
docker run --name mongodb --rm -d -p 27017:27017 mongo
```

- mongodb log check

```bash
docker logs mongodb
```

```bash
docker run --name mongodb --rm -d --network goals-network mongo
```

## backend 

```bash
docker build -t goals-node .
```

```bash
docker run --name goals-backend --rm -d -p 80:80 goals-node
```

## frontend

```bash
docker build -t goals-react .  
```

```bash
docker run --name goals-frontend --rm -p 3000:3000 -it goals-react
```


## ip setting

- inner host localhost 

```js
'mongodb://host.docker.internal:27017/course-goals'
```

- docker network using 

```js
mongodb://mongodb:27017/course-goals
```

## docker network setting 

```bash
docker network create goals-net
```
## react operate to in Internet Explore or Chrome ( Browser )

- so, network address is localhost 
- /frontend/App.js
- API와 상호작용 하는 것은 Docker 밖의 일이다. 
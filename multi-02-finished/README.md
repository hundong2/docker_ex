# mongodb 

```bash
docker run --name mongodb --rm -d -p 27017:27017 mongo 
```

# frontend

## install docker 

```bash
docker build -t goals-react .
```

## start docker 

```bash
docker run --name goals-frontend --rm -d -p 3000:3000 goals-react 
```
# backend 

## install docker 

```bash
docker build -t goals-node .
```

## start docker 

```bash
docker run --name goals-backend --rm -d -p 80:80 goals-node
```

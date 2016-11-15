## BUILD
docker build --no-cache=true -t skuarch/consul:latest .

## RUN 
docker run --name consul --net=host -i -t -d -p 8300:8300 skuarch/consul:latest 

## START
docker start consul
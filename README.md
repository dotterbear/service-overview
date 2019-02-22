# Local Setup Guide
## Prerequisites
- Maven version >= 3.5.4
- Java 8
- MongoDB version >= 4.0.5

## Get Started
### 1. run the [init-script](https://github.com/dotterbear/service-overview/tree/master/init-scripts), it will clone the related projects

### 2. Go into the service-eureka-server project and execute following commands
```
mvn clean spring-boot:run -Dspring.profiles.active=dev
```
After the application started up, please check [Eureka server page](http://localhost:8761/) is on

### 3. Go into the service-config-server project and execute following commands
```
mvn clean spring-boot:run -Dspring.profiles.active=dev
```
After the application started up, please go to [Eureka server page](http://localhost:8761/) and check application is registered in Eureka

### 4. Start the MongoDB instance with Docker (if you want to create that on local, please go to 4.1)
Go into the mongodb-docker-template project, build the image with Dockerfile-dev and run it

Example for service-jobad-reader:

```
cd ./mongodb-docker-template/service-jobad-reader
docker build -f Dockerfile-dev .
docker run -p 37017:27017 -d ${please-replace-with-image-id}
```

### 4.1. Start the MongoDB instance on local
Start up a local MongoDB instance on port 37017
```
mongod --port 37017
```
Connect it with MongoDB Shell and paste the [script](https://raw.githubusercontent.com/dotterbear/mongodb-docker-template/master/service-jobad-reader/init-dev.js)
```
mongo --port 37017
```

5. Starting others services
Go into the service-jobad-reader, service-eureka-scheduler, service-zuul-server projects and repeat the steps of starting service-config-server
***service-rss-reader local version is in the development, thanks!***

# service-overview

![overview1](https://github.com/dotterbear/service-overview/raw/master/chart/1.png)

![overview2](https://github.com/dotterbear/service-overview/raw/master/chart/2.png)

## Communicating between Microservices

![overview3](https://github.com/dotterbear/service-overview/raw/master/chart/jobad-ms.png)

## Service

**[service-search-ui](https://github.com/dotterbear/service-search-ui)** - An Angular search UI with docker image. [Demo site](http://35.212.3.117:8768/)

**[service-eureka-server](https://github.com/dotterbear/service-eureka-server)** - A eureka server with docker image.

**[service-zuul-server](https://github.com/dotterbear/service-zuul-server)** - A proxy zuul server for frontend.

**service-config-server** - A spring cloud config server with git registry and docker image.

**[service-rss-reader](https://github.com/dotterbear/service-rss-reader)** - A eureka client to fetch rss.

**[service-eureka-scheduler](https://github.com/dotterbear/service-eureka-scheduler)** - A fixed rate scheduler to call other eureka client with restTemplate, ribbon and hystrix.

**[service-jobad-reader](https://github.com/dotterbear/service-jobad-reader)** - A reader to parse rss and search.

## Pipeline

![overview3](https://github.com/dotterbear/service-overview/raw/master/chart/3.png)

## TODO List
- [] Release page
- [] docker compose
- [] add dev env
- [] add development guide
- [] add development init script

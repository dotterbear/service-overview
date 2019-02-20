# service-overview

![overview1](https://github.com/dotterbear/service-overview/raw/master/chart/1.png)

![overview2](https://github.com/dotterbear/service-overview/raw/master/chart/2.png)

### Communicating between Microservices

![overview3](https://github.com/dotterbear/service-overview/raw/master/chart/jobad-ms.png)

### Service

**[service-search-ui](https://github.com/dotterbear/service-search-ui)** - An Angular search UI with docker image. [Demo site](http://35.212.3.117:8768/)

**[service-eureka-server](https://github.com/dotterbear/service-eureka-server)** - A eureka server with docker image.

**[service-zuul-server](https://github.com/dotterbear/service-zuul-server)** - A proxy zuul server for frontend.

**service-config-server** - A spring cloud config server with git registry and docker image.

**[service-rss-reader](https://github.com/dotterbear/service-rss-reader)** - A eureka client to fetch rss.

**[service-eureka-scheduler](https://github.com/dotterbear/service-eureka-scheduler)** - A fixed rate scheduler to call other eureka client with restTemplate, ribbon and hystrix.

**[service-jobad-reader](https://github.com/dotterbear/service-jobad-reader)** - A reader to parse rss and search.

### Pipeline

![overview3](https://github.com/dotterbear/service-overview/raw/master/chart/3.png)

### TODO List
- [] Release page
- [] docker compose
- [] add dev env

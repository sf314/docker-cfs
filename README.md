# Docker CFS

This project allows you to run CFS in a containerized environment, assuming that
CFS is configured to run in the typical way (cmake, as defined by the CFS
documentation). 

## Build steps

In order to build the images required to run CFS, I use Docker-Compose. The 
build can be done as follows: 

```
docker-compose up --build
```

This will first generate the base Ubuntu image with the appropriate installed 
dependencies, and then create a new image that performs the CFS build steps. 


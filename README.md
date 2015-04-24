# Beanstalkd + Beanstalk Console Docker container

This container provides support for beanstalk and beanstalk console.

## Setup

#### Building
    
    docker build -t beanstalk .
    
#### Running
    
    docker run -d -p <host ip>:8080 -p <host ip>:11300 -v /host/bs storage/path:/data --name beanstalk beanstalk
    
## Ports

| Port | Service |
| :-- | :-- |
| 11300 | beanstalk |
| 8080 | beanstalk console |

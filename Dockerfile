FROM phusion/baseimage:latest
MAINTAINER Daniel Korger <korger@ironshark.de>

# install requirements
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y && apt-get install -y \
                beanstalkd

ENV DEBIAN_FRONTEND text

# clean up
RUN apt-get clean \
        && apt-get clean autoclean \
        && apt-get autoremove -y \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/data"]

CMD ["/usr/bin/beanstalkd", "-f", "60000", "-b", "/data"]

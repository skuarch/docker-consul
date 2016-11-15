FROM ubuntu:16.04

MAINTAINER Alfredo Bello <skuarch@yahoo.com.mx>

ENV CONSUL_URL=https://releases.hashicorp.com/consul/0.7.1/consul_0.7.1_linux_amd64.zip

RUN apt-get update -y && \
    apt-get install unzip curl -y && \
    curl -o consul.zip ${CONSUL_URL} && \
    unzip consul.zip && \
    mv consul /usr/local/bin && \
    PATH=$PATH:/usr/local/bin/consul && \
    chmod +x /usr/local/bin/consul && \
    rm -rf /consul.zip

EXPOSE 8300 8500 8600
CMD ["consul", "agent", "-dev"]
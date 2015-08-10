# Dockerfile for gozmq
FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install libzmq1 libzmq-dev wget vim git pkg-config gcc -y
RUN wget https://storage.googleapis.com/golang/go1.3.3.linux-amd64.tar.gz 
RUN tar -C /usr/local -xzf  go1.3.3.linux-amd64.tar.gz
ENV HOME=/root USER=root GOPATH=/go \
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/go/bin
CMD ["/bin/bash"]


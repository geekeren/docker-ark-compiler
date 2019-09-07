FROM ubuntu:16.04
ENV VERSION 0.2
RUN dpkg --add-architecture i386
RUN apt update
RUN apt -y install openjdk-8-jdk wget
WORKDIR /tmp/OpenArkCompiler
RUN wget https://www.openarkcompiler.cn/download/OpenArkCompiler-$VERSION-ubuntu-16.04-x86_64.tar.gz
RUN tar -xzvf OpenArkCompiler-$VERSION-ubuntu-16.04-x86_64.tar.gz
RUN mv OpenArkCompiler-0.2-ubuntu-16.04-x86_64/bin/* /usr/bin
RUN rm -rf /tmp/OpenArkCompiler
WORKDIR /OpenArkCompiler/workspace
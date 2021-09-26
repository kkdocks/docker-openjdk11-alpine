FROM alpine:3.10

LABEL maintainer="nekoimi <nekoimime@gmail.com>"

ENV JAVA_HOME=/usr/lib/jvm/default-jvm
ENV PATH=${PATH}:${JAVA_HOME}/bin
ENV LANG=C.UTF-8

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk -U upgrade \
    && apk add openjdk11

CMD ["jshell"]
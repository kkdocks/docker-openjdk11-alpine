#!/usr/bin/env bash

docker build -t nekoimi/openjdk:11-alpine3.10 .

docker push nekoimi/openjdk:11-alpine3.10

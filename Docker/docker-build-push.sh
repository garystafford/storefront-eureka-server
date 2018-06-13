#!/usr/bin/env bash

./gradlew clean build
docker build -f Docker/Dockerfile --no-cache -t garystafford/storefront-eureka:latest .
docker push garystafford/storefront-eureka:latest

# docker run --name storefront-eureka -d garystafford/storefront-eureka:latest
#!/usr/bin/env bash

./gradlew clean build
docker build -f Docker/Dockerfile --no-cache -t garystafford/storefront-eureka:3.0.0 .
docker push garystafford/storefront-eureka:3.0.0

# docker run --name storefront-eureka -d garystafford/storefront-eureka:latest
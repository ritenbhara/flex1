#!/bin/bash
#note docker,java and docker-compose should be present on vm
cd /tmp
git clone https://github.com/ritenbhara/flex1.git
/tmp/flex1/gradlew build

cp /tmp/flex1/build/libs/flex.war /tmp/flex1/docker_1/docker_tomcat_server

cd /tmp/flex1/
docker-compose build
docker-compose up -d

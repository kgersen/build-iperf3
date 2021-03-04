#!/bin/sh
docker build --tag build-iperf3 .
docker create --name deleteme build-iperf3
docker cp deleteme:/usr/local/bin/iperf3 .
docker rm deleteme 
docker rmi build-iperf3:latest 

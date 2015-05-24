#!/bin/sh

service nginx start
trap "exit" TERM INT
while true;
do
    sleep 10;
done

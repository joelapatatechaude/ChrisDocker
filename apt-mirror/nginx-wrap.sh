#!/bin/bash

trap "echo byebye" TERM INT
service nginx start &
wait
while true;
do
    sleep 10;
done

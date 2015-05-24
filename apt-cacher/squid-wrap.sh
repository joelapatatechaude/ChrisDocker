#!/bin/bash

. /usr/share/squid-deb-proxy/init-common.sh;
pre_start;

trap "echo byebye" TERM INT
$SQUID -N -f /etc/squid-deb-proxy/squid-deb-proxy.conf &
wait


#!/bin/sh

docker run \
       -p 80:80 \
       --name apt-mirror \
       -v /scratch/apt-mirror/mirror:/var/spool/apt-mirror/mirror \
       -v /scratch/apt-mirror/skel:/var/spool/apt-mirror/skel \
       -v /scratch/apt-mirror/var:/var/spool/apt-mirror/var \
       apt-mirror

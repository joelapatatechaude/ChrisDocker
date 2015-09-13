FROM debian:jessie

RUN echo "deb http://repo.aptly.info/ squeeze main" > /etc/apt/sources.list.d/aptly.list; \
#apt-key adv --keyserver keys.gnupg.net --recv-keys 2A194991; \
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 2A194991; \
apt-get update; \
apt-get install aptly emacs -y

ADD aptly.conf /etc/aptly.conf
# Need to mount /aptly to something VOLUME ["/aptly"]

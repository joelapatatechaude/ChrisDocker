FROM apt-base:latest

RUN dagi apt-mirror nginx

COPY ./default /etc/nginx/sites-enabled/
COPY ./mirror.list /etc/apt/mirror.list
COPY nginx-wrap.sh /usr/local/bin/
# This doesn't work. I need to enable it or call it manually
#RUN service nginx start

#CMD /wait.sh
CMD ["/usr/local/bin/nginx-wrap.sh"]

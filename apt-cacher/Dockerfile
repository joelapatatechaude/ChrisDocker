FROM apt-base:latest

RUN dagi squid-deb-proxy

RUN rm -rf /var/lib/apt/lists/*

RUN FILE=/etc/squid-deb-proxy/squid-deb-proxy.conf; sed -r '/http_access deny !to_archive_mirrors/D;/cache deny !to_archive_mirrors/D;s/(refresh_pattern.*)/\1 ignore-auth/' ${FILE} > ${FILE}.tmp; mv ${FILE}.tmp ${FILE}

COPY squid-wrap.sh /usr/local/bin/

#COPY squid-deb-proxy.conf /etc/squid-deb-proxy/

CMD ["/usr/local/bin/squid-wrap.sh"]

FROM quay.io/instaclustr/node-apache-cassandra:2.1.7
COPY python2cassandra4bug2.1.7.py /opt/bin/python2cassandra4bug2.1.7.py
RUN pip install cassandra-driver
CMD python /opt/bin/python2cassandra4bug2.1.7.py

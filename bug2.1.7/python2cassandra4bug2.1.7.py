from cassandra.cluster import Cluster
#from cassandra.policies import DCAwareRoundRobinPolicy
from cassandra.query import BatchStatement, BatchType, ConsistencyLevel
import time

#pip install cassandra-driver


cluster = Cluster(
    contact_points=[
        "54.148.8.69", "54.148.56.146", "54.148.58.129", "54.148.61.80", "52.25.64.243", "54.148.60.159"
        #"127.0.0.1"
    ],
    port=9042)

session = cluster.connect()

print 'Connected to cluster %s' % cluster.metadata.cluster_name

insert_raw = session.prepare("INSERT INTO instametrics.events_raw (host, service, time, state, metric, cluster_id) VALUES (?, ?, ?, ?, ?, ?) USING TTL 21600")

while True:
    my_time = time.time() * 1000
    print str(my_time)
    for j in range(100):
        batch = BatchStatement(batch_type=BatchType.UNLOGGED, consistency_level=ConsistencyLevel.QUORUM)
        print j
        for i in range(32):
            batch.add(insert_raw, ('host' + str(i*j),
                                   'service' + str(i*j),
                                   my_time,
                                   'state' + str(i*j),
                                   i*j,
                                   'cluster' + str(i*j)))
        session.execute(batch)
    time.sleep(1)

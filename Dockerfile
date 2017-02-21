# Dockerfile for ZooKeeper

FROM quay.io/signalfuse/maestro-base:alp-3.2-jdk7
MAINTAINER Maxime Petazzoni <max@signalfx.com>

# Get latest stable release of ZooKeeper
RUN wget -q -O - http://apache.01link.hk/zookeeper/stable/zookeeper-3.4.9.tar.gz \
  | tar -C /opt -xz

ADD run.py /opt/zookeeper-3.4.9/.docker/

WORKDIR /opt/zookeeper-3.4.9/
CMD ["python", "/opt/zookeeper-3.4.9/.docker/run.py"]

FROM srchangb/hive-metastore:202510142124

USER root

COPY ./wildfly-openssl-1.0.7.Final.jar /opt/apache-hive-metastore-3.0.0-bin/lib/wildfly-openssl-1.0.7.Final.jar

RUN apt-get update -y && \
    apt-get install -y openssl libssl-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
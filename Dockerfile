FROM cassandra:2.1.11

# Install cUrl
RUN apt-get update && apt-get install --yes curl

# Add cassandra-lucene-index jar from maven
RUN cd /usr/share/cassandra/lib && \
  curl -LO https://repo1.maven.org/maven2/com/stratio/cassandra/cassandra-lucene-index-plugin/2.1.11.1/cassandra-lucene-index-plugin-2.1.11.1.jar

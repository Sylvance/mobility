FROM ubuntu:16.04

ENV KAFKA_HOME /usr/local/kafka

ADD ./scripts/start-kafka.sh /scripts/

# install java + others
RUN apt-get update && apt-get install -y \
  wget \
  openjdk-8-jdk

# install kafka
RUN wget https://dlcdn.apache.org/kafka/3.2.0/kafka_2.13-3.2.0.tgz && \
  tar -xzf kafka_2.13-3.2.0.tgz && \
  mv kafka_2.13-3.2.0 $KAFKA_HOME

EXPOSE 2181 9092

RUN chmod +x /scripts/start-kafka.sh

CMD ["/scripts/start-kafka.sh"]

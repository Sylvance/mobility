require "kafka"

# The first argument is a list of "seed brokers" that will be queried for the full
# cluster topology. At least one of these *must* be available. `client_id` is
# used to identify this client in logs and metrics. It's optional but recommended.
kafka = Kafka.new(["kafka1:9092", "kafka2:9092"], client_id: "event-gateway-producer")

kafka.deliver_message("Started location stream", topic: "location")

# Instantiate a new producer.
producer = kafka.async_producer(
  # Trigger a delivery once 100 messages have been buffered.
  delivery_threshold: 100,

  # Trigger a delivery every 30 seconds.
  delivery_interval: 30,
  compression_codec: :snappy,
  compression_threshold: 10,

  # The number of retries when attempting to deliver messages. The default is
  # 2, so 3 attempts in total, but you can configure a higher or lower number:
  max_retries: 5,

  # The number of seconds to wait between retries. In order to handle longer
  # periods of Kafka being unavailable, increase this number. The default is
  # 1 second.
  retry_backoff: 5
)

# Add a message to the producer buffer.
producer.produce("Lat, Long", topic: "location")
producer.produce("Lat1, Long1", topic: "location")
producer.produce("Lat2, Long2", topic: "location")
producer.produce("Lat3, Long3", topic: "location")

# Deliver the messages to Kafka.
producer.deliver_messages
kafka.deliver_message("Ended location stream", topic: "location")

at_exit do
    producer.shutdown
    kafka.shutdown
end

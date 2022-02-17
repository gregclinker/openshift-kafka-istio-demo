source ./env.sh

$KAFKA_HOME/bin/kafka-console-producer.sh \
--bootstrap-server $BOOTSTRAP_SERVER:443 \
--producer-property security.protocol=SSL \
--producer-property ssl.truststore.password=password \
--producer-property ssl.truststore.location=./truststore.jks \
--topic $TEST_TOPIC

source ./env.sh

$KAFKA_HOME/bin/kafka-console-consumer.sh \
--bootstrap-server $BOOTSTRAP_SERVER:443 \
--consumer-property security.protocol=SSL \
--consumer-property ssl.truststore.password=password \
--consumer-property ssl.truststore.location=./truststore.jks \
--topic $TEST_TOPIC --from-beginning

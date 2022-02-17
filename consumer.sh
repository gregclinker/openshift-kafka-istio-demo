source ./env.sh

kubectl run kafka-consumer -ti --image=strimzi/kafka:latest-kafka-2.4.0 \
--rm=true --restart=Never -- bin/kafka-console-consumer.sh \
--bootstrap-server $KAFKA_CLUSTER_NAME-kafka-bootstrap:9092 \
--topic $TEST_TOPIC --from-beginning

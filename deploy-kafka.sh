source ./env.sh
#
oc create -f kafka.yaml
oc create -f topic.yaml
#
sleep 20
#
oc extract secret/$KAFKA_CLUSTER_NAME-cluster-ca-cert --keys=ca.crt --to=- > ca.crt
keytool -import -trustcacerts -alias root -file ca.crt -keystore truststore.jks -storepass password -noprompt
rm ca.crt

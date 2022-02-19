source ./env.sh
#
rm truststore.jks
#
oc project kafka
#
oc create -f kafka.yaml
oc create -f topic.yaml
#
while ! oc get secret/$KAFKA_CLUSTER_NAME-cluster-ca-cert; do echo "sleeping"; sleep 5; done
#
oc extract secret/$KAFKA_CLUSTER_NAME-cluster-ca-cert --keys=ca.crt --to=- > ca.crt
keytool -import -trustcacerts -alias root -file ca.crt -keystore truststore.jks -storepass password -noprompt
rm ca.crt

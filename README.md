****Openshift Kafka/Istio demo****
Example project showing Kafka running inside an Istio Service mesh on Openshift. Assumes you have Openshift oc, Kubernetes kubctl and Kafka executables available.

Build a Kafka Cluster

`./deploy-kafka.sh`

Run an external producer against the test topic

`./producer-external.sh`

Run an external consumer against the test topic

`./consumer-external.sh`

Tear down everything

`./tearDown.sh`


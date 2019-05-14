oc project pipeline-app
oc scale --replicas=1 dc nexus

oc project cicd
oc scale --replicas=1 dc jenkins
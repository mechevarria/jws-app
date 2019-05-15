# cleanup build and staging after pipeline completes
oc project pipeline-app-staging
oc delete all --selector app=jws-app-staging
oc delete is jws-app-staging

oc project pipeline-app
oc delete all --selector app=jws50-tomcat9-basic-s2i
oc delete is jws-app-staging

# oc scale --replicas=0 dc nexus

oc project cicd
# oc scale --replicas=0 dc jenkins

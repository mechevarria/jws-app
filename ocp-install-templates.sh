#!/usr/bin/env bash

oc login -u admin

for resource in jws50-tomcat9-image-stream.json \
  jws50-tomcat9-basic-s2i.json
do
  oc replace -n openshift --force -f \
  https://raw.githubusercontent.com/jboss-container-images/jboss-webserver-5-openshift-image/webserver50-dev/templates/${resource}
done

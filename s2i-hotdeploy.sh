#!/usr/bin/env bash

mvn -P openshift package

id=$(docker ps | { read line1 ; read line2 ; echo "$line2" ; } | awk '{print $1;}')

docker cp deployments/ROOT.war ${id}:/deployments
#!/usr/bin/env bash

# https://github.com/openshift/source-to-image/blob/master/docs/cli.md#s2i-build

source_location=.
builder_image=registry.redhat.io/jboss-webserver-5/webserver50-tomcat9-openshift
tag=jws-app
flags="-c --incremental"

s2i build ${source_location} ${builder_image} ${tag} ${flags}
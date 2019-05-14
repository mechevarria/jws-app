#!/usr/bin/env bash

# https://github.com/openshift/source-to-image/blob/master/docs/cli.md#s2i-build

port=8080
tag=pipeline-app/jws-app

docker run -p ${port}:${port} ${tag}
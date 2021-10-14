#!/bin/bash

set -euxo pipefail

docker build --progress plain --squash -t mlupin/docker-lambda:java8.al2-x86_64 .

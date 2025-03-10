#!/bin/bash

set -euxo pipefail

export PUBLISH_DATE=$(date "+%Y%m%d%H%M")
export BASE_IMAGE="mlupin/lambda-base-2:build-x86_64"
export CC_IMAGE="mlupin/docker-lambda:build-x86_64"

docker tag ${BASE_IMAGE} ${BASE_IMAGE}-${PUBLISH_DATE}
docker tag ${BASE_IMAGE} ${CC_IMAGE}
docker tag ${BASE_IMAGE} ${CC_IMAGE}-${PUBLISH_DATE}
docker push ${BASE_IMAGE}
docker push ${BASE_IMAGE}-${PUBLISH_DATE}
docker push ${CC_IMAGE}
docker push ${CC_IMAGE}-${PUBLISH_DATE}

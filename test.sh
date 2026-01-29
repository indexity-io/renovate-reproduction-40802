#!/bin/bash

docker run \
  --rm \
  -v $PWD/renovate.json:/usr/src/app/renovate.json \
  -e LOG_LEVEL=info \
  -e RENOVATE_TOKEN=$RENOVATE_TOKEN \
  -e RENOVATE_REPOSITORIES="indexity-io/renovate-reproduction-40340" \
  --network host \
  -it \
  renovate/renovate:42.74.2

#!/bin/sh

container-structure-test test \
    --config config.yaml \
    --image ${PLUGIN_IMAGE}

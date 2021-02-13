#!/bin/sh

container-structure-test test \
    --config ${PLUGIN_CONFIG:-config.yaml} \
    --driver ${PLUGIN_DRIVER:-docker}
    --output ${PLUGIN_OUTPUT:-text}
    --image ${PLUGIN_IMAGE}

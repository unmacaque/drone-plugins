#!/bin/sh

markdownlint --config "${PLUGIN_CONFIG:-.markdownlint.yml}" ./*/*

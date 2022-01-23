#!/bin/bash

! grep '.' <(find "$@" -name PKGBUILD | xargs -r -0 -n1 namcap 2>&1)

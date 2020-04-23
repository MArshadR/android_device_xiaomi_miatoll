 #!/bin/bash
#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Required!
export DEVICE=davinci
export VENDOR=xiaomi

export DEVICE_BRINGUP_YEAR=2019

"./../../${VENDOR}/${DEVICE}/setup-makefiles.sh" "$@"

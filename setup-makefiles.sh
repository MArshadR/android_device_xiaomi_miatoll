#!/bin/bash
#
# Copyright (C) 2020 The LineageOS Project

set -e

# Required!
export DEVICE=curtana
export DEVICE_COMMON=sm6250-common
export VENDOR=xiaomi
export DEVICE_BRINGUP_YEAR=2020

"./../../${VENDOR}/${DEVICE}/setup-makefiles.sh" "$@"

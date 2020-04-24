#
# Copyright (C) 2017-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/curtana 

# Screen density
TARGET_SCREEN_DENSITY := 400

# Security patch level
VENDOR_SECURITY_PATCH := 2020-02-01

# Assert
TARGET_OTA_ASSERT_DEVICE := curtana

# Dexpreopt
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := false
      WITH_DEXPREOPT := true
    endif
  endif
endif

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.selinux.permissive
TARGET_KERNEL_SOURCE := kernel/xiaomi/curtana
TARGET_KERNEL_CONFIG := curtana_defconfig
TARGET_KERNEL_VERSION := 4.14
TARGET_KERNEL_CLANG_COMPILE := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

-include vendor/xiaomi/curtana/BoardConfigVendor.mk

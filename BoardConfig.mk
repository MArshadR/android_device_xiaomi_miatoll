#
# Copyright (C) 2017-2020 The LineageOS Project
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

# Kernel [TODO - make enforcing ]
BOARD_KERNEL_BASE := 0x80000000
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=1
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset=0x01000000
BOARD_MKBOOTIMG_ARGS := --tags_offset=0x00000100
BOARD_KERNEL_CMDLINE := androidboot.selinux.permissive
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
TARGET_KERNEL_VERSION := 4.14

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Vendor security patch level
VENDOR_SECURITY_PATCH := 2020-02-01

# Inherit proprietary stuffs from vendor
-include vendor/xiaomi/curtana/BoardConfigVendor.mk

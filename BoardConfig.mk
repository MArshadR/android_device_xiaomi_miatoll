#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6250-common
-include device/xiaomi/sm6250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/curtana

# Inherit proprietary blobs
-include vendor/xiaomi/curtana/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := curtana

# Display
TARGET_SCREEN_DENSITY := 440

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

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
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=1
BOARD_KERNEL_CMDLINE := androidboot.selinux.permissive
TARGET_KERNEL_SOURCE := kernel/xiaomi/curtana
TARGET_KERNEL_CONFIG := curtana_defconfig
TARGET_KERNEL_VERSION := 4.14
TARGET_KERNEL_CLANG_COMPILE := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# SELinux
include device/qcom/sepolicy/sepolicy.mk

-include vendor/xiaomi/curtana/BoardConfigVendor.mk

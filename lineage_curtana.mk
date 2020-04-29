#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/curtana

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from curtana
$(call inherit-product, device/xiaomi/curtana/device.mk)

# Inherit some LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_curtana
PRODUCT_DEVICE := curtana
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 9 Pro Max
PRODUCT_MANUFACTURER := Xiaomi



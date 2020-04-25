#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, device/xiaomi/curtana/device.mk)

# Inherit some LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_curtana
PRODUCT_DEVICE := curtana
PRODUCT_BRAND := Redmi/Xiaomi
PRODUCT_MODEL := Redmi Note 9 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="curtana" \
    TARGET_DEVICE="curtana"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
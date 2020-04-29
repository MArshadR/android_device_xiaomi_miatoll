#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common stuffs
$(call inherit-product, vendor/xiaomi/curtana/curtana-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage/lineage-sdk

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/audio/audio_platform_info.xml
$(LOCAL_PATH)/audio/audio_policy_volumes.xml
$(LOCAL_PATH)/audio/default_volume_tables.xml
$(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd937x.xml
$(LOCAL_PATH)/audio/sound_trigger_platform_info.xml

# Treble
PRODUCT_USE_VNDK_OVERRIDE := true

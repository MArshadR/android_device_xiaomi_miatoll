# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common configs from Havoc-OS
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit from miatoll
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Device identifier
PRODUCT_NAME := havoc_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 9 Series
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := Redmi/curtana_global/curtana:10/QKQ1.191215.002/V11.0.10.0.QJWMIXM:user/release-keys

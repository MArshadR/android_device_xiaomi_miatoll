# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common configs from AOSPA
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Inherit from curtana
$(call inherit-product, device/xiaomi/curtana/device.mk)

# Device identifier
PRODUCT_NAME := pa_curtana
PRODUCT_DEVICE := curtana
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 9s
PRODUCT_MANUFACTURER := Xiaomi

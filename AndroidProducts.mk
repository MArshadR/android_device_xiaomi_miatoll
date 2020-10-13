DEVICE_PATH := device/xiaomi/miatoll

PRODUCT_MAKEFILES += \
    $(DEVICE_PATH)/havoc_miatoll.mk

COMMON_LUNCH_CHOICES += \
    havoc_miatoll-userdebug \
    havoc_miatoll-user \
    havoc_miatoll-eng

DEVICE_PATH := device/xiaomi/miatoll

PRODUCT_MAKEFILES += \
    $(DEVICE_PATH)/syntatix_miatoll.mk

COMMON_LUNCH_CHOICES += \
    syntatix_miatoll-userdebug \
    syntatix_miatoll-user \
    syntatix_miatoll-eng

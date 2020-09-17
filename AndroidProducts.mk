DEVICE_PATH := device/xiaomi/miatoll

PRODUCT_MAKEFILES += \
    $(DEVICE_PATH)/lineage_miatoll.mk

COMMON_LUNCH_CHOICES += \
    miatoll_curtana-userdebug \
    miatoll_curtana-user \
    miatoll_curtana-eng

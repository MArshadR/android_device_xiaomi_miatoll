DEVICE_PATH := device/xiaomi/curtana

PRODUCT_MAKEFILES += \
    $(DEVICE_PATH)/lineage_curtana.mk

COMMON_LUNCH_CHOICES += \
    lineage_curtana-userdebug \
    lineage_curtana-user \
    lineage_curtana-eng

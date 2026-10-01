#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# DerpFest
DERPFEST_BUILD_TYPE := Official
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_ACCORD := false
TARGET_CALL_RECORDING_SUPPORTED := true
WITH_GMS := true

# DerpFest only uncrypts an OTA (block map in /cache) when this is set; without
# it recovery is handed the /data path, which Lineage recovery can't mount on an
# encrypted device, and the install aborts.
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.recovery_update=true

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

PRODUCT_NAME := lineage_raphael
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="raphael-user 11 RKQ1.200826.002 V12.5.2.0.RFKMIXM release-keys" \
    BuildFingerprint=Xiaomi/raphael/raphael:11/RKQ1.200826.002/V12.5.2.0.RFKMIXM:user/release-keys

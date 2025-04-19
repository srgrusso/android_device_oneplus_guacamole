#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

BLISS_BUILDTYPE := OFFICIAL

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1440

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bliss_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1911
PRODUCT_BRAND := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus7Pro-user 12 SKQ1.211113.001 P.202303230244 release-keys" \
    BuildFingerprint=OnePlus/OnePlus7Pro/OnePlus7Pro:12/SKQ1.211113.001/P.202303230244:user/release-keys \
    DeviceName=OnePlus7Pro \
    DeviceProduct=OnePlus7Pro \
    SystemDevice=OnePlus7Pro \
    SystemName=OnePlus7Pro

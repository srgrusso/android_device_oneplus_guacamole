#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOSS Flags

# Gapps
WITH_GMS := true
TARGET_CORE_GMS := true

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# Flag for GrapheneOS Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

# Enable Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Enable Quick Tap Funtionality
TARGET_SUPPORTS_QUICK_TAP := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Enable Blur
TARGET_ENABLE_BLUR := true

TARGET_BOOT_ANIMATION_RES := 1440

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1911
PRODUCT_BRAND := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7Pro
PRODUCT_SYSTEM_DEVICE := OnePlus7Pro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 12 SKQ1.211113.001 P.202302151913 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

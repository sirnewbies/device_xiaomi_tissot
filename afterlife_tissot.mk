#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Inherit from tissot device
$(call inherit-product, device/xiaomi/tissot/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tissot
PRODUCT_NAME := afterlife_tissot
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A1
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tissot-user 8.0.0 OPR1.170623.026 8.1.10 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/tissot/tissot_sprout:8.0.0/OPR1.170623.026/8.1.10:user/release-keys"

# Quick-tap
TARGET_SUPPORTS_QUICK_TAP := true

# GAPPS Stuffs
TARGET_GAPPS_ARCH := arm64
#WITH_GMS := true
#TARGET_CORE_GMS := true

# Pixel Fingerprint
TARGET_USE_PIXEL_FINGERPRINT := true

# Face-unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
AFTERLIFE_BUILD_TYPE := COMMUNITY
AFTERLIFE_MAINTAINER := sirNewbies
AFTERLIFE_BUILD_TYPE := Unofficial

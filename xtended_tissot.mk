#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tissot device
$(call inherit-product, device/xiaomi/tissot/device.mk)

# Inherit some common RiceDroid stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tissot
PRODUCT_NAME := xtended_tissot
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A1
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_FACE_UNLOCK_SUPPORTED := true
USE_AOSP_CLOCK := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := true
# Xtended Stuffs
TARGET_GAPPS_ARCH := arm64

XTENDED_BUILD_MAINTAINER := Yusna21
XTENDED_BUILD_TYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080

# SoC
PROCESSOR_MODEL := MSM8953

# Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false
TARGET_BUILD_APERTURE_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := false

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

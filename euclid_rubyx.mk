#
# SPDX-FileCopyrightText: 2023-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rubyx/device.mk)

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/euclid/config/common_full_phone.mk)

# Enable animation override to fix lag on fewer mediatek devices
PERF_ANIM_OVERRIDE := true

PRODUCT_NAME := euclid_rubyx
PRODUCT_DEVICE := rubyx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := ruby

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="ruby-user 14 UP1A.231005.007 OS2.0.8.0.UMOMIXM release-keys" \
    BuildFingerprint=Redmi/ruby_global/ruby:14/UP1A.231005.007/OS2.0.8.0.UMOMIXM:user/release-keys \
    SystemName=ruby_global \
    SystemDevice=ruby

# Device config
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build Config
TARGET_BUILD_PACKAGE := 3
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Maintainer
EUCLID_MAINTAINER := Radioactive

EUCLID_DEVICE := Redmi_Note_12_Pro_5G_(ruby)
EUCLID_PROCESSOR := MediaTek_Dimensity_1080

#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from M15 device
$(call inherit-product, device/meizu/M15/device.mk)

PRODUCT_DEVICE := M15
PRODUCT_NAME := omni_M15
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := M15
PRODUCT_MANUFACTURER := meizu

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Meizu_M15_CN-user 7.1.2 N2G47H 1527488406 release-keys"

BUILD_FINGERPRINT := Android/msm8953_64/msm8953_64:7.1.2/N2G47H/1527488406:user/release-keys

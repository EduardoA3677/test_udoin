#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/oneplus/udon

# Release name
PRODUCT_RELEASE_NAME := udon

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Enable virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from udon device
$(call inherit-product, device/oneplus/udon/device.mk)

PRODUCT_DEVICE := udon
PRODUCT_NAME := twrp_udon
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := CPH2487
PRODUCT_MANUFACTURER := oneplus

PRODUCT_SYSTEM_NAME := CPH2487
PRODUCT_SYSTEM_DEVICE := OP5961L1

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2487-user 13 SKQ1.220905.001 R4T3.1057738-62b8-3b9 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/CPH2487/OP5961L1:13/SKQ1.221119.001/T.R4T3.1057738-62b8-3b9:user/release-keys

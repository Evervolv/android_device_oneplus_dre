#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lemonade device
$(call inherit-product, device/oneplus/dre/aosp_dre.mk)

# Boot animation
BOOT_ANIMATION_SIZE := 1080p

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-ev

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

PRODUCT_NAME := ev_dre
PRODUCT_MODEL := DE2117

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlusN200-user 12 SKQ1.210216.001 f82603_2e011_27aea release-keys" \
    TARGET_DEVICE=OnePlusN200 \
    TARGET_PRODUCT=OnePlusN200

BUILD_FINGERPRINT := OnePlus/OnePlusN200/OnePlusN200:12/SKQ1.210216.001/R.202304131655:user/release-keys

#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lemonade device
$(call inherit-product, device/oneplus/dre/aosp_dre.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-ev

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

PRODUCT_NAME := ev_dre
PRODUCT_MODEL := DE2117

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlusN200-user 12 SKQ1.210216.001 R.1927fbf_c3ef_1 release-keys" \
    TARGET_DEVICE=OnePlusN200 \
    TARGET_PRODUCT=OnePlusN200

BUILD_FINGERPRINT := OnePlus/OnePlusN200/OnePlusN200:12/SKQ1.210216.001/R.1927fbf_c3ef_1:user/release-keys

#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from a70q device
$(call inherit-product, device/samsung/a70q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a70q
PRODUCT_DEVICE := a70q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A705
PRODUCT_MANUFACTURER := samsung

BUILD_FINGERPRINT := "samsung/a70qxx/a70q:11/RP1A.200720.012/A705FNXXU5DWB4:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a70qxx-user 11 RP1A.200720.012 A705FNXXU5DWB4 release-keys" \
    PRODUCT_NAME="a70q" \
    TARGET_DEVICE="a70q"

PRODUCT_GMS_CLIENTID_BASE := android-samsung
 
# Infinity
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := Panda
TARGET_BUILD_VIMUSIC := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GAPPS := true
TARGET_HAS_UDFPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true

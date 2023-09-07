#
# Copyright (C) 2022 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := device/blackview/Tab_10_Pro

# Release name
PRODUCT_RELEASE_NAME := Power Armor 13

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from device
$(call inherit-product, device/blackview/Tab_10_Pro/device.mk)

# Inherit some common twrp stuff.
#$(call inherit-product, vendor/omni/config/common_tablet.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Tab_10_Pro
PRODUCT_NAME := twrp_Tab_10_Pro
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := Tab 10 Pro
PRODUCT_MANUFACTURER := wheatek

PRODUCT_GMS_CLIENTID_BASE := android-wheatek

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Tab_10_Pro \
    PRODUCT_NAME=Tab_10_Pro \
    PRIVATE_BUILD_DESC="Tab_10_Pro-user 11 RP1A.200720.011 1659524293 release-keys"

BUILD_FINGERPRINT := Blackview/Tab_10_Pro/Tab_10_Pro:11/RP1A.200720.011/1659524293:user/release-keys

#ro.build.version.base_os=Blackview/Tab_10_Pro/Tab_10_Pro:11/RP1A.200720.011/1640757874:user/release-keys

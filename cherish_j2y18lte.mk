#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
TARGET_WANTS_FOD_ANIMATIONS := true

# Inherit from j2y18lte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit MIUI Camera
$(call inherit-product, vendor/MiuiCamera/config.mk)

#No Gapps
CHERISH_NONGAPPS := true

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := j2y18lte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := cherish_j2y18lte
PRODUCT_MODEL := Galaxy J2 Pro 2018

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := j2y18lte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="j2y18lteser-user 7.1.1 NMF26X J250FXWU2ATL1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/coral/coral:11/RQ2A.210505.002/7246365:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/coral/coral:11/RQ2A.210505.002/7246365:user/release-keys

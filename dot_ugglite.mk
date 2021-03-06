#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Dot-OS stuff
$(call inherit-product, vendor/dot/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 720

# Inherit from ugglite device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := ugglite
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 5A
PRODUCT_NAME := dot_ugglite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := ugglite

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="ugglite" \
    PRODUCT_NAME="ugglite" \
    PRIVATE_BUILD_DESC="ugglite-user 7.1.2 N2G47H V11.0.3.0.NDFMIXM release-keys"

BUILD_FINGERPRINT := "xiaomi/ugglite/ugglite:7.1.2/N2G47H/V11.0.3.0.NDFMIXM:user/release-keys"

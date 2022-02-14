#
# Copyright (C) 2019-2021 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit makefiles
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Inherit from santoni device
$(call inherit-product, device/xiaomi/santoni/device.mk)

# Prebuilt apps
$(call inherit-product-if-exists, vendor/prebuilt-apps/config.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Touch HAL
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.xiaomi_8937

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm

PRODUCT_DEVICE := santoni
PRODUCT_NAME := ancient_santoni
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4X
BOARD_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


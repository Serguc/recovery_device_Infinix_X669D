#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/Infinix/X669D

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# API
PRODUCT_SHIPPING_API_LEVEL := 30

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.0-impl-1.2

PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    android.hardware.health@2.0-impl-default \
    libhealthd.$(PRODUCT_PLATFORM)

PRODUCT_PACKAGES += \
    vendor.sprd.hardware.boot@1.2-impl \
    vendor.sprd.hardware.boot@1.2-impl.recovery \
    vendor.sprd.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl \
    fastbootd

# Trusty dependencies
PRODUCT_PACKAGES += \
    libtrusty \
    libtrusty_metrics

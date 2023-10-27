#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
BOARD_HAVE_BLUETOOTH_RTK_TV := true
include hardware/realtek/rtkbt/rtkbt.mk

PRODUCT_PACKAGES += \
    BananaPiM5BluetoothOverlay

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Kernel Modules
PRODUCT_PACKAGES += \
    8822cs \
    rtk_btusb

## TEE
TARGET_HAS_TEE := false

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/g12-common/g12.mk)

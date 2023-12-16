#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/bananapi/m5

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := m5

## DTB
TARGET_DTB_NAME := sm1_s905y3_bananapim5
TARGET_DTBO_NAME := sm1_s905y3_bananapim5_wifi_overlay

## Kernel modules
TARGET_KERNEL_EXT_MODULES := \
    rtk_btusb \
    rtl8822cs/rtl88x2CS

## Partitions
BOARD_SUPER_PARTITION_SIZE := 2084569088

## Properties
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Wi-Fi
BOARD_WLAN_DEVICE := realtek
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
WIFI_DRIVER_SOCKET_IFACE := wlan0
PRODUCT_CFI_INCLUDE_PATHS += hardware/realtek/wlan/wpa_supplicant_8_lib

## Include the common tree BoardConfig makefile
include device/amlogic/g12-common/BoardConfigCommon.mk

## Include the proprietary BoardConfig makefile
include vendor/amlogic/m5/BoardConfigVendor.mk

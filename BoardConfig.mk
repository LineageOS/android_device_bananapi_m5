#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/bananapi/m5

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := m5

## DTB
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_DTB_NAME := sm1_s905x3_bananapim5
TARGET_DTBO_NAME := \
    android_p_overlay_dt \
    sm1_s905x3_bananapim5_wifi_overlay

## Kernel
TARGET_KERNEL_PLATFORM_TARGET := m5
TARGET_KERNEL_SOURCE := vendor/bananapi/m5-build

## Kernel modules
BOOT_KERNEL_MODULES := $(strip $(shell cat $(DEVICE_PATH)/ramdisk.modules.load))
RECOVERY_KERNEL_MODULES := $(BOOT_KERNEL_MODULES)

BOARD_RECOVERY_KERNEL_MODULES_LOAD := $(RECOVERY_KERNEL_MODULES)
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/vendor_dlkm.modules.load))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

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

## Include the common tree BoardConfig makefile
include device/amlogic/g12-common/BoardConfigCommon.mk

## Include the proprietary BoardConfig makefile
include vendor/bananapi/m5/BoardConfigVendor.mk

#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifneq ($(filter m5 m5_tab, $(TARGET_DEVICE)),)

LOCAL_PATH := device/bananapi/m5
include $(call all-makefiles-under,$(LOCAL_PATH))

include external/wpa_supplicant_8/wpa_supplicant/wpa_supplicant_conf.mk

RADIO_FILES := $(wildcard $(LOCAL_PATH)/factory/bootfiles/*)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,factory/bootfiles/$(f)))

include $(LOCAL_PATH)/factory.mk

endif

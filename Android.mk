LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), Tab_10_Pro)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

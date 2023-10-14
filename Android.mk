LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),xandxt)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

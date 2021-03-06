LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PROGUARD_FLAG_FILES := proguard.cfg

LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4

LOCAL_SRC_FILES := $(call all-subdir-java-files, src)
LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, res)
LOCAL_ASSET_DIR := $(addprefix $(LOCAL_PATH)/, assets)

LOCAL_PACKAGE_NAME := KitKatWhite

LOCAL_AAPT_FLAGS := -c mdpi,hdpi,xhdpi,xxhdpi -x 10

include $(BUILD_PACKAGE)

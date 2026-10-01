#
# Keeps GMS apps out of the image that ship in vendor/pixel/gms unconditionally.
# They're still installable from the Play Store; listing them here only stops
# them being preinstalled on product, which is otherwise too full for the
# super partition.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    Maps \
    Photos \
    PrebuiltGmail
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := audio.primary.$(TARGET_BOOTLOADER_BOARD_NAME)
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := \
	drm.cpp \
	hwc.cpp

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libdrm \
	libhardware \
	liblog

include $(BUILD_SHARED_LIBRARY)

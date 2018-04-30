LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := camera.cpp

LOCAL_SHARED_LIBRARIES := \
  libgui \
  libui

LOCAL_C_INCLUDES := \
    frameworks/native/include

LOCAL_MODULE := libshim_libmmcamera
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := camera_parameters.cpp
LOCAL_C_INCLUDES := frameworks/av/services/camera/libcameraservice
LOCAL_SHARED_LIBRARIES := libcameraservice
LOCAL_MODULE := libshim_cameraservice
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_32_BIT_ONLY := true
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

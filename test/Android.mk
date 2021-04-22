################################################################################
LOCAL_PATH	:= $(call my-dir)

PROJECT_BASE	:= .
BENANS_SDK_BASE	:= $(PROJECT_BASE)/../

################################################################################
# ben_ans.
include $(CLEAR_VARS)
LOCAL_MODULE    := libbenans
LOCAL_SRC_FILES := $(BENANS_SDK_BASE)/libs/$(TARGET_ARCH_ABI)/libben_ans.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES+= $(LOCAL_PATH)/inc

LOCAL_MODULE	:= tst_ben_ans

LOCAL_SRC_FILES	:= $(PROJECT_BASE)/src/rnnoise_demo.c

# library & path setting.
LOCAL_SHARED_LIBRARIES  += libbenans

#LOCAL_ARM_NEON	:= true
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)


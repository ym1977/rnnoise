################################################################################
# # common setting for android platform.

################################################################################
LOCAL_PATH	:= $(call my-dir)

PROJECT_BASE	:= .

################################################################################
# self-test options.

include $(CLEAR_VARS)

LOCAL_C_INCLUDES+= $(LOCAL_PATH)/include

# macro for SDK Module.

LOCAL_MODULE	:= ben_ans

LOCAL_SRC_FILES	:= $(PROJECT_BASE)/src/denoise.c\
	$(PROJECT_BASE)/src/rnn.c		\
	$(PROJECT_BASE)/src/rnn_data.c		\
	$(PROJECT_BASE)/src/rnn_reader.c	\
	$(PROJECT_BASE)/src/pitch.c		\
	$(PROJECT_BASE)/src/kiss_fft.c		\
	$(PROJECT_BASE)/src/celt_lpc.c

#LOCAL_ARM_NEON	:= true
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)




# Build libgsl
include $(CLEAR_VARS)

LOCAL_PATH := $(THIS_PATH)


LOCAL_MODULE := libgsl_open_adreno200
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/egl
LOCAL_MODULE_TAGS := optional

LOCAL_PRELINK_MODULE := false

LOCAL_CFLAGS := 

LOCAL_SRC_FILES :=


LOCAL_C_INCLUDES := \
$(LOCAL_PATH)/../../include


LOCAL_CFLAGS += -DGLES_ERR_DEBUG



include $(BUILD_STATIC_LIBRARY) 
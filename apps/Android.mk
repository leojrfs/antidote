LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE:= healthd
LOCAL_MODULE_TAGS := debug eng

LOCAL_CFLAGS:= -Wall

LOCAL_SRC_FILES := healthd_android.c
LOCAL_CFLAGS := -Wall
LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)../src

LOCAL_STATIC_LIBRARIES := 	libantidotemanager \
				libantidotecomm \
				libantidotetrans \
				libantidotecommplugin \
				libantidotecommparser \
				libantidotedim \
				libantidoteapi \
				libantidoteutil \
				libantidotespecializations \
				libantidotecommpluginandroid \
				libantidotecommplugintrans
LOCAL_LDLIBS := -llog -landroid

include $(BUILD_SHARED_LIBRARY)
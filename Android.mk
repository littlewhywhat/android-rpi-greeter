LOCAL_PATH:= $(call my-dir)

# greeter
# ==========

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
   greeter.cpp \
   main.cpp \

LOCAL_MODULE:= greeter

LOCAL_CFLAGS := -Werror -Wall

include $(BUILD_EXECUTABLE)

# greeter_test
# ===============

include $(CLEAR_VARS)

LOCAL_MODULE := greeter_test
LOCAL_MODULE_TAGS := tests

LOCAL_CFLAGS := -Werror -Wall

LOCAL_SRC_FILES := \
    greeter.cpp \
    greeter_test.cpp \

LOCAL_STATIC_LIBRARIES := \
    libgmock \

include $(BUILD_NATIVE_TEST)

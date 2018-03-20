# Copyright 2017 Roman Vaivod

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= greeter.cpp

LOCAL_MODULE:= greeter

LOCAL_INIT_RC := greeter.rc

include $(BUILD_EXECUTABLE)

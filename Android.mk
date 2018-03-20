# Copyright 2017 Roman Vaivod

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= helloworld.cpp

LOCAL_MODULE:= helloworld

LOCAL_INIT_RC := helloworld.rc

include $(BUILD_EXECUTABLE)

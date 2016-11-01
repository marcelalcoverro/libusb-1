LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)


LOCAL_SRC_FILES:= \
	 core.c \
	 descriptor.c \
	 io.c \
	 sync.c \
	 os/linux_usbfs.c \
	 os/threads_posix.c \
	 jinterface.c
	 
	 
	 # C/CPP Flags
LOCAL_CFLAGS += $(OPENNI2_CFLAGS) -DOPENNI2_EXPORT -fvisibility=default
	 
			
LOCAL_LDLIBS := -llog

LOCAL_MODULE := libusb 


include $(BUILD_SHARED_LIBRARY)  

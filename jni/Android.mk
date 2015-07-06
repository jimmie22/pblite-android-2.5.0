$(info ====================================)
$(info current cpu arch: $(TARGET_ARCH_ABI))
$(info ====================================)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := libprotobuf-lite
LOCAL_CPPFLAGS  += -std=c++11

LOCAL_SRC_FILES := \
			coded_stream.cc                \
			common.cc                      \
			extension_set.cc               \
			generated_message_util.cc      \
			message_lite.cc                \
			once.cc                        \
			repeated_field.cc              \
			wire_format_lite.cc            \
			zero_copy_stream.cc            \
			zero_copy_stream_impl_lite.cc  \

ifneq ($(TARGET_ARCH),arm)
ifeq ($(TARGET_ARCH_ABI),x86)
LOCAL_SRC_FILES +=	atomicops_internals_x86_gcc.cc
endif
LOCAL_CFLAGS    += -Os
endif

include $(BUILD_STATIC_LIBRARY)

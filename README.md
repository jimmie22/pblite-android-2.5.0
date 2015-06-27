# pblite-android-2.5.0

1 support for armeabi, armeabi-v7, x86, arm64-v8a;

2 compiled it with ndk-r10e;

3 some updates made for the source code to compile the custome libs, especially the arm64-v8a architecture.
  in <google/protobuf/stubs/common.h>
  add one line:
  #define google google_public

  in <google/protobuf/stubs/platform_macros.h> 
  add following lines:
  #elif defined(__aarch64__)
  #define GOOGLE_PROTOBUF_ARCH_ARM 1
  #define GOOGLE_PROTOBUF_ARCH_64_BIT 1

  #elif defined(ANDROID) && defined(GOOGLE_PROTOBUF_ARCH_64_BIT)
  #define GOOGLE_PROTOBUF_OS_ANDROID

  in <google/protobuf/stubs/atomicops.h> 
  update following line:
  #if defined(GOOGLE_PROTOBUF_OS_APPLE) || defined(GOOGLE_PROTOBUF_OS_ANDROID)

  in <google/protobuf/stubs/atomicops_internals_atomicword_compat.h>
  add ligic for GOOGLE_PROTOBUF_ARCH_64_BIT
  

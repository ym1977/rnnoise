#NDK_TOOLCHAIN_VERSION := 4.9
#NDK_TOOLCHAIN_VERSION := clang

APP_PLATFORM = android-19
#APP_PLATFORM = android-21

APP_OPTIM := debug

APP_CFLAG := -g -ggdb -O0

#APP_CPPFLAGS += -std=c++11
#APP_CPPFLAGS += -std=gnu++11
#APP_CPPFLAGS += -frtti -fexceptions

#APP_LDFLAGS := -static

APP_STL := gnustl_shared

APP_ABI := armeabi-v7a arm64-v8a


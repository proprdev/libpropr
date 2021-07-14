ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:14.0
DEBUG=0
FINALPACKAGE=1

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libpropr

libpropr_FILES = $(wildcard src/*.m)
libpropr_CFLAGS = -fobjc-arc
libpropr_INSTALL_PATH = /usr/local/lib

include $(THEOS_MAKE_PATH)/library.mk

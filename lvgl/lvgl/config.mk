LVGL_PATH := __DIRNAME
SRC += $(shell find $(LVGL_PATH)/src -type f -name '*.c')
SRC += $(shell find $(LVGL_PATH)/src -type f -name '*.cpp')
INCLUDES+=-I__DIRNAME/..
override CFLAGS+=-DDLV_CONF_INCLUDE_SIMPLE

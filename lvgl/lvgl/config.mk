SRC+=$(wildcard __DIRNAME/src/*.c)
SRC+=$(wildcard __DIRNAME/src/*/*.c)
SRC+=$(wildcard __DIRNAME/src/*/*/*.c)
SRC+=$(wildcard __DIRNAME/src/*/*/*/*.c)
SRC+=$(wildcard __DIRNAME/src/*/*/*/*/*.c)

INCLUDES+=-I__DIRNAME/..

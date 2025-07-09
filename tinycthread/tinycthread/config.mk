SRC+=__DIRNAME/source/tinycthread.c

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
    override LDFLAGS+=-lpthread
endif

SRC+={{module.dirname}}/naett.c

ifeq ($(OS),Windows_NT)
    # WinHTTP backend
    LDFLAGS+=-lwinhttp
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Darwin)
        # NSURLRequest backend
        CFLAGS+=-Wno-gnu-zero-variadic-macro-arguments
        LDFLAGS+=-framework Foundation
    else ifeq ($(UNAME_S),Linux)
        # libcurl backend
        LDFLAGS+=-lcurl -lpthread
    endif
endif

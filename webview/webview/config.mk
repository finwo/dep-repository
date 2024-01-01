SRC+=__DIRNAME/webview.cc

ifeq ($(OS),Windows_NT)
    # CFLAGS += -D WIN32
    override CFLAGS+=
    override CPPFLAGS+=-I __DIRNAME/external/libs/Microsoft.Web.WebView2.1.0.1150.38/build/native/include
    override LDFLAGS+=-mwindows -ladvapi32 -lole32 -lshell32 -lshlwapi -luser32 -lversion
    ifeq ($(PROCESSOR_ARCHITEW6432),AMD64)
        # CFLAGS += -D AMD64
    else
        ifeq ($(PROCESSOR_ARCHITECTURE),AMD64)
            # CFLAGS += -D AMD64
        endif
        ifeq ($(PROCESSOR_ARCHITECTURE),x86)
            # CFLAGS += -D IA32
        endif
    endif
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        # CFLAGS += -D LINUX
        override CFLAGS+=$(shell pkg-config --cflags gtk+-3.0 webkit2gtk-4.0)
        override LDFLAGS+=$(shell pkg-config --libs  gtk+-3.0 webkit2gtk-4.0)
    endif
    ifeq ($(UNAME_S),Darwin)
        # CFLAGS += -D OSX
        override CFLAGS+=-mmacosx-version-min=10.9
        override LDFLAGS+=-framework WebKit
    endif
    UNAME_P := $(shell uname -p)
    ifeq ($(UNAME_P),x86_64)
        # CFLAGS += -D AMD64
    endif
    ifneq ($(filter %86,$(UNAME_P)),)
        # CFLAGS += -D IA32
    endif
    ifneq ($(filter arm%,$(UNAME_P)),)
        # CFLAGS += -D ARM
    endif
endif

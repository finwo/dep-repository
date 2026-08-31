SRC+=$(wildcard {{module.dirname}}/src/*.c)
SRC+=$(wildcard {{module.dirname}}/src/postgres/*.c)
SRC+=$(wildcard {{module.dirname}}/src/postgres/include/*.c)
SRC+={{module.dirname}}/protobuf/pg_query.pb-c.c
INCLUDES+=-I{{module.dirname}} -I{{module.dirname}}/src/include -I{{module.dirname}}/src/postgres/include
ifeq ($(OS),Windows_NT)
INCLUDES+=-I{{module.dirname}}/src/postgres/include/port/win32
endif

ifeq ($(USE_PROTOBUF_CPP),1)
SRC:=$(filter-out {{module.dirname}}/src/pg_query_outfuncs_json.c {{module.dirname}}/src/pg_query_outfuncs_protobuf.c,$(SRC))
SRC+={{module.dirname}}/src/pg_query_outfuncs_protobuf_cpp.cc
SRC+={{module.dirname}}/protobuf/pg_query.pb.cc
CXXFLAGS+=-I{{module.dirname}} -I{{module.dirname}}/src/include -I{{module.dirname}}/src/postgres/include -std=c++17
LDFLAGS+=-lstdc++ -lm
endif

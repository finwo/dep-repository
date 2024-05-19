SRC+=$(wildcard __DIRNAME/c/common/*.c)
SRC+=$(wildcard __DIRNAME/c/dec/*.c)
SRC+=$(wildcard __DIRNAME/c/enc/*.c)
SRC+=__DIRNAME/c/fuzz/decode_fuzzer.c

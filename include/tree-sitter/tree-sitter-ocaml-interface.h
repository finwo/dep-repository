#ifndef TREE_SITTER_OCAML_INTERFACE_H_
#define TREE_SITTER_OCAML_INTERFACE_H_

typedef struct TSLanguage TSLanguage;

#ifdef __cplusplus
extern "C" {
#endif

const TSLanguage *tree_sitter_ocaml_interface(void);

#ifdef __cplusplus
}
#endif

#endif

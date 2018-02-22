
OCB_FLAGS   = -use-ocamlfind -use-menhir -tag bin_annot -pkg ppx_deriving.show -I src -I lib
OCB = ocamlbuild $(OCB_FLAGS)

all: native

clean:
	$(OCB) -clean

native:
	$(OCB) main.native

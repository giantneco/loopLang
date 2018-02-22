
OCB_FLAGS   = -use-ocamlfind -use-menhir -I src -I lib
OCB = ocamlbuild $(OCB_FLAGS)

clean:
	$(OCB) -clean

native:
	$(OCB) main.native

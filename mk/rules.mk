topdir = ../

include $(topdir)/vars.mk

%.ml: %.mll
	$(LEXER) -o $@ -ml $<

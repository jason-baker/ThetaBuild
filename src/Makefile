LIBDIR=../lib
BINDIR=../bin
TNSL=$(wildcard *.tnsl)
TCLSRCS=$(addprefix $(LIBDIR)/,$(patsubst %.tnsl,%.tcl,$(TNSL)))
TENSILE_FLAGS=-indented-refs -no-weave
TENSILE=..\..\tensile\lua5.1.exe ..\..\tensile\tensile
VERSION=CURRENT

.PHONY:	DOC

default:	$(TCLSRCS)
	@cp $(LIBDIR)/tbuild.tcl $(BINDIR)/tbuild.tcl
	@chmod +x $(BINDIR)/tbuild.tcl
#
$(LIBDIR)/%.tcl: %.tnsl
	@printf "Tangling: %%16s -> %%s\n" "$^" "$@"
	$(TENSILE) $(TENSILE_FLAGS) -unit $(patsubst %.tnsl,%.tcl,$^) -tangle-to "$@" "$^"

clean:
	rm -f $(TCLSRCS)
	rm -f $(BINDIR)/tbuild.tcl

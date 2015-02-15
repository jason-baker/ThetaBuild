LIBDIR=../../lib/thetaBuild
TESTDIR=../../test/thetaBuild
BINDIR=../../bin
TNSL=$(wildcard *.tnsl)
TCLSRCS=$(addprefix $(LIBDIR)/,$(patsubst %.tnsl,%.tcl,$(TNSL)))
TESTTCLSRCS=$(addprefix $(TESTDIR)/,$(patsubst %.tnsl,%.testtcl,$(TNSL)))
TENSILE_FLAGS=-indented-refs -no-weave
TENSILE=..\..\..\tensile\lua5.1.exe ..\..\..\tensile\tensile
VERSION=CURRENT

.PHONY:	DOC

default:	build build-tests

build: $(TCLSRCS)
	@mv $(LIBDIR)/tbuild.tcl $(BINDIR)/tbuild.tcl
	@chmod +x $(BINDIR)/tbuild.tcl

build-tests : $(TESTTCLSRCS)
	@mv $(LIBDIR)/tbuild.tcl $(BINDIR)/tbuild.tcl
	@chmod +x $(BINDIR)/tbuild.tcl

$(LIBDIR)/%.tcl: %.tnsl
	@printf "Tangling: %%16s -> %%s\n" "$^" "$@"
	$(TENSILE) $(TENSILE_FLAGS) -unit $(patsubst %.tnsl,%.tcl,$^) -tangle-to "$@" "$^"

$(TESTDIR)/%.testtcl: %.tnsl
	@printf "Tangling: %%16s -> %%s\n" "$^" "test_$@"
	$(TENSILE) $(TENSILE_FLAGS) -unit $(patsubst %.tnsl,%.testtcl,$^) -tangle-to "$@" "$^"

clean:
	rm -f $(TCLSRCS)
	rm -f $(BINDIR)/tbuild.tcl

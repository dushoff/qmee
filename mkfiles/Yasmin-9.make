## This is a _linked_ (mkfile) Makefile for Yasmin

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
Sources += $(wildcard Ass*/*/*.R *.md *.rmd)

autopipeR = defined

Assignment_2/scripts/script_1.Rout: Assignment_2/scripts/script_1.R

Assignment_2/scripts/script_2.Rout: Assignment_2/scripts/script_2.R Assignment_2/scripts/script_1.Rout

## Assignment_4/Assignment_4_discussion.pdf: README.md

######################################################################

### Makestuff

## Sources += $(wildcard *.mk)
## include $(wildcard *.mk)

Ignore += Makefile
Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	ln -s ../makestuff .
	ls makestuff/Makefile

-include makestuff/os.mk

-include makestuff/pipeR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk

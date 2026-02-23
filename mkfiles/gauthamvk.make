## This is a _linked_ (mkfile) Makefile for Gautham

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
Sources += $(wildcard hw*/scripts/*.R)
autopipeR = defined

assignment_1.Rout: hw1Jan9/scripts/assignment_1.R
	$(pipeR)

## hw3Jan23/scripts/assignment_3.Rout: hw3Jan23/scripts/assignment_3.R
## hw5Feb6/Assignment_5.pdf

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

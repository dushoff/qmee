## This is a _linked_ (mkfile) Makefile for Iman Nemar

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
Sources += $(wildcard Assignments/*.R)
autopipeR = defined

data/cleaned: | data
	$(mkdir)

data:
	$(mkdir)

Assignment2_DataCleaning.Rout: Assignments/Assignment2_DataCleaning.R | data/cleaned
	$(pipeR)

Assignment3_IN.Rout: Assignments/Assignment3_IN.R Assignment2_DataCleaning.Rout
	$(pipeR)

## Assignments/QMEE_Assignment_5_IN.pdf: README.md

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

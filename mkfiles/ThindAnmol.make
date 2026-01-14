## This is a _linked_ (mkfile) Makefile for Anmol

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Ignore += Data/

Sources += $(wildcard *.R *.md *.rmd)
autopipeR = defined

Assignment1.Rout: Assignment1.R | Data/Clean
Data/Clean: | Data
	$(mkdir)

Data:
	$(mkdir)

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

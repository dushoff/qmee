## This is a _linked_ (mkfile) Makefile for Li Siyao

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
Sources += $(wildcard scripts/*.R)
autopipeR = defined

## scripts/data_checking_w2.Rout: scripts/data_checking_w2.R
## scripts/analysis_w2.Rout: scripts/analysis_w2.R

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

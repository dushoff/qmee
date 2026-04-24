## This is a _linked_ (mkfile) Makefile for toxicity
## Hayden and Molly

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

## Submission

## Final_Write_Up.pdf
Analysis/MANCOVA.html: Analysis/MANCOVA.Rmd
Analysis/RDA.html: Analysis/RDA.Rmd

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
autopipeR = defined
autoknit = defined

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

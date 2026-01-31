## This is a _linked_ (mkfile) Makefile for Katherine Ullrich

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R *.md *.Rmd *.rmd)
autopipeR = defined
autoknit = defined

Ignore += *.html

## Assignment1_Bio708.html: Assignment1_Bio708.Rmd
## Assignment2_File1_Bio708.html: Assignment2_File1_Bio708.Rmd
## Assignment3_Bio708.html: Assignment3_Bio708.Rmd
Assignment3_Bio708.html: Assignment2_File1_Bio708.html Assignment2_File2_Bio708.html

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

## This is a _linked_ (mkfile) Makefile for nitachan

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

## BIo708_assignment1_NC.Rout: BIo708_assignment1_NC.R
BIO708-assignment7.Rout: BIO708-assignment7.R BIO708_assignment2_datacleaning_NC.Rout


######################################################################

Sources += $(wildcard *.R *.md *.rmd)
autopipeR = defined

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

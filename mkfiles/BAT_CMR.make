## This is a _linked_ (mkfile) Makefile for Bat capture
## Xingyuan, Jezreel, Giancarlo

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

pdf: BIO708_Presentation.pdf QMEE_BAT_CMR_Paper.pdf QMEE_project_proposal.pdf
Sources += $(wildcard *.R *.md *.rmd)
autopipeR = defined

## scripts/

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

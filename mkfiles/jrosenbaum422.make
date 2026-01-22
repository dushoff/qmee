## This is a _linked_ (mkfile) Makefile for Jack R.

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
Sources += $(wildcard */scripts/*.R)
autopipeR = defined

data_cleaning.Rout: EXOC2_Sociability_Data/scripts/data_cleaning.R
	$(rHere)

sniff_plots.Rout: EXOC2_Sociability_Data/scripts/sniff_plots.R data_cleaning.Rout
	$(rHere)

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
-include makestuff/simpleR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk

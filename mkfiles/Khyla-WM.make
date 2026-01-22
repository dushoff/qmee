## This is a _linked_ (mkfile) Makefile for Khyla

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
autopipeR = defined

######################################################################

## byssal_initial_calculations.Rout: byssal_initial_calculations.R

assignment_2A_data_cleaning.Rout: assignment_2A_data_cleaning.R

assignment_2B_DOC_plot.Rout: assignment_2B_DOC_plot.R assignment_2A_data_cleaning.Rout 

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

## This is a _linked_ (mkfile) Makefile for Hayden

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

Sources += $(wildcard *.R *.md *.Rmd *.rmd)
autopipeR = defined
autoknit = defined

Ignore += *.html
## Assignment_1_Script.html: Assignment_1_Script.Rmd 2025-01-20_181758_KILLIFISH_RESPIROMETRY1_JAN2.txt

## Assignment_1_Script.Rmd
## Assignment_2_Cleaning_Data_Script.Rmd
## Assignment_2_Separate_Plot_Script.Rmd
## Assignment_3_Script.html: Assignment_3_Script.Rmd

Assignment_3_Script.tangle.Rout: Assignment_3_Script.tangle.r
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
-include makestuff/rmd.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk

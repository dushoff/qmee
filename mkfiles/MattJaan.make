## This is a _linked_ (mkfile) Makefile for MattJaan

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
Sources += $(wildcard Ass*/*.R)
autopipeR = defined

Assignment2/Assignment2_1.Rout: Assignment2/Assignment2_1.R
	$(rThere)

Assignment2/Assignment2_2.Rout: Assignment2/Assignment2_2.R
	$(rThere)

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

-include makestuff/simpleR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk

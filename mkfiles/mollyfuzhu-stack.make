## This is a _linked_ (mkfile) Makefile for Molly D.

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
Sources += $(wildcard Ass*/*.R)
autopipeR = defined

Assignment_2/Assignment_2_.Rout: Assignment_2/Assignment_2_.R
	$(rThere)

Assignment_2/Assignment_2_RDS_script.Rout: Assignment_2/Assignment_2_RDS_script.R
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

## This is a _linked_ (mkfile) Makefile for Sarah L.

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
Sources += $(wildcard Ass*/*.R Ass*/*.md Ass*/*.rmd)
autopipeR = defined

## Assignment_3/plots.Rout: Assignment_3/plots.R Assignment_3/Assignment_3.md
Assignment_3/plots.Rout: Assignment_3/plots.R Assignment_3/cleaned_malaria_data.rds
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
-include makestuff/pipeR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk

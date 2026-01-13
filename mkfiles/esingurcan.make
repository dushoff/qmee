## https://github.com/esingurcan/QMEE

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R *.md *.rmd *.Rmd)
Sources += $(wildcard */*.rmd */*.Rmd)
autopipeR = defined
autoknit = defined

Ignore += Ass*/*.html

######################################################################

## Assignment_Week_1/Assignment1.html: Assignment_Week_1/Assignment1.Rmd

## Assignment_Week_1/README.Rmd


## Did lots of debugging
a1.r: Assignment_Week_1/Assignment1.Rmd
	$(tangle_r)

a1.Rout: a1.R
	$(pipeR)

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
-include makestuff/rmd.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk

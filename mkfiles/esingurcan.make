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

## JD: This assignment goes _far_ beyond what we asked, while not obviously doing anything that's a specific response to the assignment (e.g., what might be a good, or fun, example of a “substantive calculation” -- maybe something you hadn't thought of before. There is a _lot_ of extra stuff in this script, apparently including several libraries that you don't even use. This suggests that much of this was taken from elsewhere, and there's little evidence that any of the coding was done specifically for the course (although, of course, even less evidence that it wasn't). I'm not trying to guess how much work you did, but I am asking you to keep your assignments focused in the future. Giving meaningful feedback to 30 students while keeping up with our other duties is hard enough to begin with. Grade: 2/3

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

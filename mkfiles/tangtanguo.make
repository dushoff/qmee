## This is a _linked_ (mkfile) Makefile for Tangtang

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt README.md"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
Ignore += *.html *.rds
autopipeR = defined

QMEE_Assignment2_ExaminingMyData_TangTang.html: QMEE_Assignment2_ExaminingMyData_TangTang.rmd
	$(knithtml)
## QMEE_Assignment2_ReadingRDSFile_TangTang.Rout: QMEE_Assignment2_ReadingRDSFile_TangTang.R

## QMEE_TangTangAssignment1_09Jan2026.Rout:

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

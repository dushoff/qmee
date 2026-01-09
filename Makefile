## This is qmee (student-repo repo)

current: target
-include target.mk

-include makestuff/perl.def

######################################################################

## screens.mk: screens.list makestuff/lmk.pl

vim_session: 
	bash -cl "vmt screens.list"

screen_session: screens.update
	$(MAKE) $(vscreens)

Ignore += screenlog.32

######################################################################

Sources += repos.txt

repos.list: repos.txt list.pl
	$(PUSH)

-include repos.mk
repos.mk: repos.txt mk.pl
	$(PUSH)

mks = $(srepos:%=%.mkfile)
mks: $(mks)

######################################################################

## Identify defunct directories
Ignore += time.tmp
time.tmp: $(wildcard */Makefile)
	ls -lt $^ > $@

#####################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff

Makefile: makestuff/00.stamp
makestuff/%.stamp: | makestuff
	- $(RM) makestuff/*.stamp
	cd makestuff && $(MAKE) pull
	touch $@
makestuff:
	git clone --depth 1 $(msrepo)/makestuff

-include makestuff/os.mk

-include makestuff/listdir.mk
-include makestuff/screendir.mk
-include makestuff/mkfiles.mk

-include makestuff/git.mk
-include makestuff/visual.mk

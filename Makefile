prefix=/usr/local
datarootdir=$(prefix)/share
etcdir=$(prefix)/etc/hpanot
datadir=$(datarootdir)
exec_prefix=$(prefix)
bindir=$(exec_prefix)/bin
mandir=$(datarootdir)/man
man1dir=$(mandir)/man1

all:
	@echo  "Targets: install, uninstall"

install: hpanot
	cp hpanot $(bindir)/
	mkdir -p $(etcdir)
	cp urls $(etcdir)/

uninstall:
	rm $(bindir)/hpanot
	rm $(etcdir)/urls
	rmdir $(etcdir)

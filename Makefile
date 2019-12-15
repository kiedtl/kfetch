# This makefile was proudly stolen from
# https://github.com/dylanaraps/pash

PREFIX ?= /usr/local
DOCDIR ?= $(PREFIX)/share/doc/kfetch

all:
	@echo Run \'make install\' to install.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@cp -p kfetch $(DESTDIR)$(PREFIX)/bin/kfetch
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/kfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/kfetch
	@rm -rf $(DESTDIR)$(DOCDIR)


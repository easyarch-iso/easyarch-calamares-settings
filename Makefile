CP=cp -rfv
MKDIR=mkdir -pv
DESTDIR=

all:
	@echo Run make install to install the package

install:
	$(MKDIR) $(DESTDIR)/etc/calamares
	$(CP) branding $(DESTDIR)/etc/calamares/
	$(CP) modules $(DESTDIR)/etc/calamares/
	$(CP) settings.conf $(DESTDIR)/etc/calamares/


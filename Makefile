TOPDIR:=${CURDIR}/fake-top

all: info

info:
	@$(MAKE) --no-print-directory -C applications/${APP} TOPDIR=$(TOPDIR) info

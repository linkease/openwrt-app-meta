TOPDIR:=${CURDIR}/fake-top

all: info

info:
	@$(MAKE) --no-print-directory -C applications/app-meta-${APP} TOPDIR=$(TOPDIR) info
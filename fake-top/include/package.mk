define BuildPackage
info:
	@echo "$(call escape_make,$(Package/$(PKG_NAME)/JsonInfo))"
endef

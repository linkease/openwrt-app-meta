define BuildPackage
info:
	@echo "$(call escape_json,$(call Package/$(PKG_NAME)/JsonInfo))"
endef
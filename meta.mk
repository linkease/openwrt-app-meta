#
# Copyright (C) 2021 jjm2473 <jjm2473@gmail.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

META_NAME?=$(notdir ${CURDIR})
META_BASENAME?=$(patsubst app-meta-%,%,$(META_NAME))
META_ARCH?=all

PKG_NAME?=$(META_NAME)
PKG_RELEASE?=1

PKG_MAINTAINER:=$(META_AUTHOR)

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

escape_json=$(strip $(subst ",\",$(subst \,\\\\,$(1))))
META_ESCAPED_TITLE:=$(call escape_json,$(META_TITLE))
META_ESCAPED_DESCRIPTION:=$(call escape_json,$(META_DESCRIPTION))
META_ESCAPED_TITLE.en:=$(call escape_json,$(META_TITLE.en))
META_ESCAPED_DESCRIPTION.en:=$(call escape_json,$(META_DESCRIPTION.en))

define Package/$(PKG_NAME)
  SECTION:=meta
  CATEGORY:=Metadata
  TITLE:=$(META_TITLE)
  DEPENDS:=$(META_DEPENDS)
  PKGARCH:=all
endef

ifneq ($(META_DESCRIPTION),)
 define Package/$(PKG_NAME)/description
   $(strip $(META_DESCRIPTION))
 endef
endif

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/JsonInfo
{
  "name": "$(META_BASENAME)",
  "title": "$(META_ESCAPED_TITLE)",
$(if $(META_ESCAPED_TITLE.en),  "title_en": "$(META_ESCAPED_TITLE.en)"$(comma))
  "entry": "$(META_LUCI_ENTRY)",
  "author": "$(META_AUTHOR)",
  "website": "$(META_WEBSITE)",
$(if $(META_TUTORIAL),  "tutorial": "$(META_TUTORIAL)"$(comma))
  "version": "$(PKG_VERSION)",
  "release": $(PKG_RELEASE),
  "arch": [$(patsubst %$(comma),%,$(subst $(space),,$(foreach arch,$(META_ARCH),"$(arch)"$(comma))))],
  "description": "$(META_ESCAPED_DESCRIPTION)",
$(if $(META_ESCAPED_DESCRIPTION.en),  "description_en": "$(META_ESCAPED_DESCRIPTION.en)"$(comma))
  "tags": [$(patsubst %$(comma),%,$(subst $(space),,$(foreach tag,$(META_TAGS),"$(tag)"$(comma))))],
  "depends": [$(patsubst %$(comma),%,$(subst $(space),,$(foreach dep,$(META_DEPENDS),"$(subst +,,$(dep))"$(comma))))]
}
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/opkg/meta $(1)/www/luci-static/resources/app-icons
	if [ -d ./root ]; then \
	  cp -pR ./root/* $(1)/; \
	else true; fi
	if [ -f ./logo.png ]; then \
		$(INSTALL_DATA) ./logo.png $(1)/www/luci-static/resources/app-icons/$(META_BASENAME).png ; \
	fi;
	echo "$(call escape_json,$(call Package/$(PKG_NAME)/JsonInfo))" > $(1)/usr/lib/opkg/meta/$(META_BASENAME).json
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

# Define some dummy packages
# 
# Define a empty package named 'PKGNAME':
# ` $(eval $(call DummyPackage,PKGNAME)) `
# Define a empty package named 'PKGNAME' that should be filled by 'PKG1' and 'PKG2':
# ` $(eval $(call DummyPackage,PKGNAME,+PKG1 +PKG2)) `
# Define a empty package named 'PKGNAME' that should be hold:
# ` $(eval $(call DummyPackage,PKGNAME,,hold essential,999.0)) `
# Define a empty package named 'PKGNAME' that should be filled by 'PKG1', and should be ignored if alternative 'PKGNAME' existed:
# ` $(eval $(call DummyPackage,PKGNAME,+PKG1,,0.00)) `

include $(TOPDIR)/rules.mk

PKG_NAME:=dummy
PKG_VERSION:=1.0
PKG_RELEASE:=1
ARCH_PACKAGES:=all

include $(INCLUDE_DIR)/package.mk

define Build/Configure
endef

define Build/Compile
endef

define DummyPackage
  define Package/$(1)
    SECTION:=dummy
    CATEGORY:=Dummy
    TITLE:=legacy $(1)
    DEPENDS:=$(2)
    PKG_FLAGS:=$(3)
    ifneq ($(4),)
        VERSION:=$(4)
    endif
  endef

  define Package/$(1)/install
  # nothing to do
  endef

  $$(eval $$(call BuildPackage,$(1)))

endef

$(eval $(call DummyPackage,transmission-daemon-openssl,+transmission-daemon,,0.00))

# call BuildPackage - OpenWrt buildroot signature

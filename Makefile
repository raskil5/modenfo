include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-modeminfo
PKG_VERSION:=1.0
PKG_RELEASE:=1

LUCI_TITLE:=LuCI Modem Info Viewer
LUCI_DEPENDS:=+luci
LUCI_PKGARCH:=all

include $(TOPDIR)/feeds/luci/luci.mk

# Define install target
define Package/luci-app-modeminfo/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view

	# Copy your Lua controller
	$(CP) ./luasrc/controller/modeminfo.lua $(1)/usr/lib/lua/luci/controller/

	# Copy your HTML view
	$(CP) ./luasrc/view/modeminfo.htm $(1)/usr/lib/lua/luci/view/
endef

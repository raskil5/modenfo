include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI Modem Info Viewer
LUCI_DEPENDS:=+luci +kmod-usb-serial +kmod-usb-serial-option +chat
LUCI_PKGARCH:=all

PKG_NAME:=luci-app-modeminfo
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(TOPDIR)/feeds/luci/luci.mk

module("luci.controller.modeminfo", package.seeall)

function index()
  entry({"admin", "status", "modeminfo"}, template("modeminfo"), _("Modem Info"), 90)
end

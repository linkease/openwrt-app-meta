#!/bin/sh
# Auto-configuration hook for ups-manager
set -e

# Ensure executable permissions for services, scripts and RPC provider
chmod 755 /etc/init.d/ups-manager 2>/dev/null || true
chmod 755 /etc/uci-defaults/80_ups_manager 2>/dev/null || true
chmod 755 /usr/bin/ups-manager-* 2>/dev/null || true
chmod 755 /usr/libexec/rpcd/luci.ups-manager 2>/dev/null || true

# Execute uci-defaults if not yet applied
[ -f /etc/uci-defaults/80_ups_manager ] && /etc/uci-defaults/80_ups_manager 2>/dev/null || true

if [ -n "$ISTORE_DONT_START" ] && [ "$ISTORE_DONT_START" = "1" ]; then
	uci set ups_manager.global.enabled='0'
	uci commit ups_manager
else
	uci set ups_manager.global.enabled='1'
	uci commit ups_manager
	/etc/init.d/ups-manager enable 2>/dev/null || true
	/etc/init.d/ups-manager restart 2>/dev/null || true
fi

# Reload rpcd smoothly using SIGHUP to discover new ubus objects without killing session tokens
killall -HUP rpcd 2>/dev/null || true
rm -rf /tmp/luci-indexcache /tmp/luci-modulecache/

exit 0

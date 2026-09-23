#!/bin/sh
# Auto-configuration hook for ups-manager
set -e

if [ -n "$ISTORE_DONT_START" ] && [ "$ISTORE_DONT_START" = "1" ]; then
	uci set ups_manager.global.enabled='0'
	uci commit ups_manager
else
	uci set ups_manager.global.enabled='1'
	uci commit ups_manager
	/etc/init.d/ups-manager restart 2>/dev/null || true
fi

exit 0

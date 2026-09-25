#!/bin/sh
# Auto-configuration hook for nvr-manager
set -e

if [ -n "$ISTORE_DONT_START" ] && [ "$ISTORE_DONT_START" = "1" ]; then
	uci set nvr-manager.config.enabled='0'
	uci commit nvr-manager
else
	uci set nvr-manager.config.enabled='1'
	uci commit nvr-manager
	/etc/init.d/nvr-manager restart 2>/dev/null || true
fi

exit 0

#!/bin/sh
# Auto-configuration hook for nvr-manager
set -e

data_dir=$(uci -q get nvr-manager.config.data_dir || true)

if [ -n "$ISTORE_DONT_START" ] && [ "$ISTORE_DONT_START" = "1" ]; then
	uci set nvr-manager.config.enabled='0'
	uci commit nvr-manager
elif [ -n "$data_dir" ]; then
	uci set nvr-manager.config.enabled='1'
	uci commit nvr-manager
	/etc/init.d/nvr-manager restart 2>/dev/null || true
fi

exit 0

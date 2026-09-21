#!/bin/sh
# iStoreOS auto-configuration hook for istore-ups
set -e

if [ -n "$ISTORE_DONT_START" ] && [ "$ISTORE_DONT_START" = "1" ]; then
	uci set istore_ups.global.enabled='0'
	uci commit istore_ups
else
	uci set istore_ups.global.enabled='1'
	uci commit istore_ups
	/etc/init.d/istore-ups restart 2>/dev/null || true
fi

exit 0

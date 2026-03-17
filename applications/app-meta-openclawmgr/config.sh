#!/bin/sh

[ -n "$ISTORE_CACHE_DIR" ] || exit 1
[ -n "$ISTORE_CONF_DIR" ] || exit 1

BASE_DIR="${ISTORE_CACHE_DIR}/OpenClawMgr"

uci -q batch <<-EOF >/dev/null || exit 1
	set openclawmgr.main=openclawmgr
	set openclawmgr.main.base_dir="${BASE_DIR}"
	set openclawmgr.main.port="18789"
	set openclawmgr.main.bind="lan"
	set openclawmgr.main.enabled="0"
	commit openclawmgr
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/openclawmgr.sh "$ISTORE_ACTION" || [ stop = "$ISTORE_ACTION" ]

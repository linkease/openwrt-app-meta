#!/bin/sh

[ -n "$ISTORE_CONF_DIR" ] || exit 1

uci -q batch <<-EOF >/dev/null || exit 1
	set openclawmgr.main=openclawmgr
	set openclawmgr.main.port="18789"
	set openclawmgr.main.bind="lan"
	set openclawmgr.main.enabled="0"
	commit openclawmgr
EOF

exit 0

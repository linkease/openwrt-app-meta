#!/bin/sh

[ -n "$ISTORE_CONF_DIR" ] || exit 1

DEFAULT_BASE_DIR="$ISTORE_CONF_DIR/OpenClawMgr"

ENABLED="$(uci -q get openclawmgr.main.enabled 2>/dev/null || true)"
if [ -z "$ENABLED" ]; then
	# Safety: do not auto-enable on (re)install; let user explicitly enable in LuCI.
	ENABLED=0
fi
if [ -n "$ISTORE_DONT_START" ]; then
	ENABLED=0
fi
case "$ENABLED" in
	1|true|yes|on) ENABLED=1 ;;
	*) ENABLED=0 ;;
esac

uci -q set openclawmgr.main=openclawmgr >/dev/null 2>&1 || exit 1

base_dir="$(uci -q get openclawmgr.main.base_dir 2>/dev/null || true)"
if [ -z "$base_dir" ]; then
	base_dir="$DEFAULT_BASE_DIR"
fi
mkdir -p "$base_dir" >/dev/null 2>&1 || exit 1

port="$(uci -q get openclawmgr.main.port 2>/dev/null || true)"
case "$port" in
	''|*[!0-9]*) uci -q set openclawmgr.main.port="18789" >/dev/null 2>&1 || exit 1 ;;
esac

bind="$(uci -q get openclawmgr.main.bind 2>/dev/null || true)"
case "$bind" in
	loopback|lan|auto|tailnet|custom) ;;
	*) uci -q set openclawmgr.main.bind="lan" >/dev/null 2>&1 || exit 1 ;;
esac

uci -q batch <<-EOF >/dev/null || exit 1
	set openclawmgr.main.base_dir="$base_dir"
	set openclawmgr.main.enabled="$ENABLED"
	commit openclawmgr
EOF

[ -x /usr/libexec/istorec/openclawmgr.sh ] || exit 0

if [ "$ENABLED" = "1" ]; then
	/usr/libexec/istorec/openclawmgr.sh install || exit $?
	/usr/libexec/istorec/openclawmgr.sh start || true
	i=0
	while [ "$i" -lt 15 ]; do
		st="$(/usr/libexec/istorec/openclawmgr.sh status 2>/dev/null || true)"
		[ "$st" = "running" ] && exit 0
		sleep 1
		i=$((i + 1))
	done
	exit 1
fi

/usr/libexec/istorec/openclawmgr.sh stop || true

exit 0

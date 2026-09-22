#!/bin/sh

[ -n "$ISTORE_CONF_DIR" ] || exit 1

DEFAULT_BASE_DIR="$ISTORE_CONF_DIR/cloudreve"

ENABLED="$(uci -q get cloudreve.main.enabled 2>/dev/null || true)"
if [ -z "$ENABLED" ]; then
    ENABLED=0
fi
if [ -n "$ISTORE_DONT_START" ]; then
    ENABLED=0
fi
case "$ENABLED" in
    1|true|yes|on) ENABLED=1 ;;
    *) ENABLED=0 ;;
esac

uci -q set cloudreve.main=cloudreve >/dev/null 2>&1 || exit 1

base_dir="$(uci -q get cloudreve.main.base_dir 2>/dev/null || true)"
if [ -z "$base_dir" ]; then
    base_dir="$DEFAULT_BASE_DIR"
fi
mkdir -p "$base_dir" >/dev/null 2>&1 || exit 1

port="$(uci -q get cloudreve.main.port 2>/dev/null || true)"
case "$port" in
    ''|*[!0-9]*) uci -q set cloudreve.main.port="5212" >/dev/null 2>&1 || exit 1 ;;
esac

uci -q batch <<-EOF >/dev/null || exit 1
    set cloudreve.main.base_dir="$base_dir"
    set cloudreve.main.enabled="$ENABLED"
    commit cloudreve
EOF

[ -x /usr/libexec/istorec/cloudreve.sh ] || exit 0

if [ "$ENABLED" = "1" ]; then
    /usr/libexec/istorec/cloudreve.sh start || true
fi

exit 0

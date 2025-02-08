
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set oneapi.@main[0].config_path="$ISTORE_CONF_DIR/OneAPI"
    commit oneapi
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/oneapi.sh $ISTORE_ACTION

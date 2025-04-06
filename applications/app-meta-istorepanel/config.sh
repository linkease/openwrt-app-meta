
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set istorepanel.@main[0].config_path="$ISTORE_CONF_DIR/1Panel"
    commit istorepanel
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/istorepanel.sh $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]

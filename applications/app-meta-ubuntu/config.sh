
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set ubuntu2.@main[0].config_path="$ISTORE_CONF_DIR/Ubuntu2"
    commit ubuntu2
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/ubuntu2.sh $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]

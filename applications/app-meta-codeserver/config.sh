[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set codeserver.@main[0].config_path="$ISTORE_CONF_DIR/CodeServer"
    commit codeserver
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/codeserver.sh $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]


[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set openwebui.@main[0].config_path="$ISTORE_CONF_DIR/OpenWebUI"
    commit openwebui
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/openwebui.sh $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]

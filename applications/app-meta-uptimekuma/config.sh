
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set uptimekuma.@main[0].config_path="$ISTORE_CONF_DIR/UptimeKuma"
    commit uptimekuma
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/uptimekuma.sh $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]

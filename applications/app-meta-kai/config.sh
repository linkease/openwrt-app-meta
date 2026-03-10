
[ -z "$ISTORE_CONF_DIR" ] && exit 1

ENABLED=1
ISTORE_ACTION=start
if [ -n "$ISTORE_DONT_START" ]; then
	ENABLED=0
	ISTORE_ACTION=stop
fi

mkdir -p "$ISTORE_CONF_DIR/KAI" || exit 1

uci -q batch <<-EOF >/dev/null || exit 1
	set kai.@kai[0].enabled=$ENABLED
	set kai.@kai[0].data_dir="$ISTORE_CONF_DIR/KAI"
	commit kai
EOF

/etc/init.d/kai $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]

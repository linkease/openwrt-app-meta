
# Require a config directory to be provided by the installer environment
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
	set dpanel.@main[0].config_path="$ISTORE_CONF_DIR/DPanel"
	commit dpanel
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/dpanel.sh $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]

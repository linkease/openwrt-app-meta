
[ -z "$ISTORE_CONF_DIR" ] && exit 1

ENABLED=1
ISTORE_ACTION=start
if [ -n "$ISTORE_DONT_START" ]; then
	ENABLED=0
	ISTORE_ACTION=stop
fi

mkdir -p "$ISTORE_CONF_DIR/BaiduDrive" || exit 1

uci -q batch <<-EOF >/dev/null || exit 1
	set baidudrive.@baidudrive[0].enabled=$ENABLED
	set baidudrive.@baidudrive[0].data_dir="$ISTORE_CONF_DIR/BaiduDrive"
	commit baidudrive
EOF

/etc/init.d/baidudrive $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]

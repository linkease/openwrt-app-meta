
[ -z "$ISTORE_CONF_DIR" ] && exit 1

ENABLED=1
if [ -n "$ISTORE_DONT_START" ]; then
	ENABLED=0
fi

mkdir -p "$ISTORE_CONF_DIR/KAIPlus" || exit 1

uci -q batch <<-EOF >/dev/null || exit 1
	set kaiplus.@kaiplus[0].enabled=$ENABLED
	set kaiplus.@kaiplus[0].data_dir="$ISTORE_CONF_DIR/KAIPlus"
	set kaiplus.@kaiplus[0].port="8189"
	set kaiplus.@kaiplus[0].base_path="/apps/kaiplus/"
	set kaiplus.@kaiplus[0].system_role="istoreos"
	commit kaiplus
EOF

/etc/init.d/kaiplus restart || true
[ -x /etc/init.d/linkease ] && /etc/init.d/linkease restart >/dev/null 2>&1 &

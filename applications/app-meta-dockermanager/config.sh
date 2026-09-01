[ -z "$ISTORE_CONF_DIR" ] && exit 1

ENABLED=1
if [ -n "$ISTORE_DONT_START" ]; then
	ENABLED=0
fi

mkdir -p "$ISTORE_CONF_DIR/DockerManager" || exit 1

uci -q batch <<-EOF >/dev/null || exit 1
	set dockermanager.@dockermanager[0].enabled=$ENABLED
	set dockermanager.@dockermanager[0].data_dir="$ISTORE_CONF_DIR/DockerManager"
	set dockermanager.@dockermanager[0].listen_mode="auto"
	set dockermanager.@dockermanager[0].external_port_enabled="0"
	set dockermanager.@dockermanager[0].socket_path="/var/run/dockermanager.sock"
	set dockermanager.@dockermanager[0].port="8192"
	set dockermanager.@dockermanager[0].bind_addr="0.0.0.0"
	set dockermanager.@dockermanager[0].base_path="/apps/dockermanager/"
	commit dockermanager
EOF

/etc/init.d/dockermanager restart || true
[ -x /etc/init.d/linkease ] && /etc/init.d/linkease restart >/dev/null 2>&1 &

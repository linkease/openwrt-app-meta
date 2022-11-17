
[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_DL_DIR" ] && exit 1
[ -z "$ISTORE_CACHE_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set transmission.@transmission[0].config_dir="$ISTORE_CONF_DIR/Transmission"
    set transmission.@transmission[0].download_dir="$ISTORE_DL_DIR/Transmission"
    set transmission.@transmission[0].incomplete_dir_enabled="true"
    set transmission.@transmission[0].incomplete_dir="$ISTORE_CACHE_DIR/Transmission"
    set transmission.@transmission[0].enabled=1
    commit transmission
EOF

mkdir -p "$ISTORE_DL_DIR/Transmission" "$ISTORE_CACHE_DIR/Transmission"
chmod 777 "$ISTORE_DL_DIR/Transmission" "$ISTORE_CACHE_DIR/Transmission"

/etc/init.d/transmission restart

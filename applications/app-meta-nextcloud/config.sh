
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set nextcloud.@nextcloud[0].config_path="$ISTORE_CONF_DIR/NextCloud"
    commit nextcloud
EOF

/usr/libexec/istorec/nextcloud.sh install

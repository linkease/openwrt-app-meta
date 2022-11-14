
[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_CACHE_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set jellyfin.@jellyfin[0].config_path="$ISTORE_CONF_DIR/Jellyfin"
    set jellyfin.@jellyfin[0].cache_path="$ISTORE_CACHE_DIR/Jellyfin"
    set jellyfin.@jellyfin[0].media_path=""
    commit jellyfin
EOF

/usr/libexec/istorec/jellyfin.sh install

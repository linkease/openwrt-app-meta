
[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_CACHE_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set emby.@main[0].config_path="$ISTORE_CONF_DIR/Emby"
    set emby.@main[0].cache_path="$ISTORE_CACHE_DIR/Emby"
    set emby.@main[0].media_path=""
    commit emby
EOF

/usr/libexec/istorec/emby.sh install

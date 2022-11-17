
[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_PUBLIC_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set navidrome.@main[0].config_path="$ISTORE_CONF_DIR/Navidrome"
    set navidrome.@main[0].music_path="$ISTORE_PUBLIC_DIR/Music"
    commit navidrome
EOF

/usr/libexec/istorec/navidrome.sh install

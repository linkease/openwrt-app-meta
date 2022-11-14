
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set nastools.@nastools[0].config_path="$ISTORE_CONF_DIR/NasTools"
    commit nastools
EOF

/usr/libexec/istorec/nastools.sh install

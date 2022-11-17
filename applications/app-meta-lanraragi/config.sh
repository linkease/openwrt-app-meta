
[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_PUBLIC_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set lanraragi.@main[0].config_path="$ISTORE_CONF_DIR/LANraragi"
    set lanraragi.@main[0].content_path="$ISTORE_PUBLIC_DIR/Comics"
    commit lanraragi
EOF

/usr/libexec/istorec/lanraragi.sh install

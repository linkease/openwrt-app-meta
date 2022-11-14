
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set chinesesubfinder.@main[0].config_path="$ISTORE_CONF_DIR/ChineseSubFinder"
    set chinesesubfinder.@main[0].media_path=""
    commit chinesesubfinder
EOF

/usr/libexec/istorec/chinesesubfinder.sh install

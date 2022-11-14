
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set kodexplorer.@kodexplorer[0].cache_path="$ISTORE_CONF_DIR/KodExplorer"
    commit kodexplorer
EOF

/usr/libexec/istorec/kodexplorer.sh install

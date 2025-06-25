
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    old_cache=`uci -q get wxedge.@wxedge[0].cache_path 2>/dev/null`
    if [ -z "$old_cache" ]; then
        set demon.@demon[0].config_path="$ISTORE_CONF_DIR/demon_cache"
    else
        echo "Use old cache path: " $old_cache
    fi
    commit demon
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/demon.sh $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]


[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_CACHE_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set plex.@main[0].config_path="$ISTORE_CONF_DIR/Plex"
    set plex.@main[0].cache_path="$ISTORE_CACHE_DIR/Plex"
    set plex.@main[0].media_path=""
    commit plex
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/plex.sh $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]
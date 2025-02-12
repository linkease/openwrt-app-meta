
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set wxedge.@wxedge[0].config_path="$ISTORE_CONF_DIR/wxedge1"
    commit wxedge
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/wxedge.sh $ISTORE_ACTION

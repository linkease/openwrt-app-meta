
[ -z "$ISTORE_CONF_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set pve.@pve[0].config_path="$ISTORE_CONF_DIR/pve"
    commit pve
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

/usr/libexec/istorec/pve.sh $ISTORE_ACTION

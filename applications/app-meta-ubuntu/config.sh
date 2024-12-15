
[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_CACHE_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set ubuntu2.@ubuntu2[0].config_path="$ISTORE_CONF_DIR/Ubuntu2"
    commit ubuntu2
EOF

ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop

if [ -f /usr/libexec/istorec/ubuntu2.sh ]; then
    /usr/libexec/istorec/ubuntu2.sh $ISTORE_ACTION
else
    /usr/share/ubuntu2/install.sh $ISTORE_ACTION
fi

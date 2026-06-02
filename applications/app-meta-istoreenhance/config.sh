
[ -z "$ISTORE_CONF_DIR" ] && exit 1

ENABLED=1
if [ -n "$ISTORE_DONT_START" ]; then
    ENABLED=0
fi

mkdir -p "$ISTORE_CONF_DIR/iStoreEnhance" || exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set istoreenhance.@istoreenhance[0].enabled=$ENABLED
    set istoreenhance.@istoreenhance[0].cache="$ISTORE_CONF_DIR/iStoreEnhance"
    commit istoreenhance
EOF

/etc/init.d/istoreenhance restart || true

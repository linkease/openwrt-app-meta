
[ -z "$ISTORE_CONF_DIR" ] && exit 1

ENABLED=1
ISTORE_ACTION=start
if [ -n "$ISTORE_DONT_START" ]; then
    ENABLED=0
    ISTORE_ACTION=stop
fi

uci -q batch <<-EOF >/dev/null || exit 1
    set istoreenhance.@istoreenhance[0].enabled=$ENABLED
    set istoreenhance.@istoreenhance[0].cache='$ISTORE_CONF_DIR/iStoreEnhance'
    commit istoreenhance
EOF

if [ -f /etc/init.d/istoreenhance ]; then
    /etc/init.d/istoreenhance $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]
else
    /etc/init.d/istoreenhance $ISTORE_ACTION || [ stop = $ISTORE_ACTION ]
fi

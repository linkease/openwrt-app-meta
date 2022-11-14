
[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_CACHE_DIR" ] && exit 1

password=`uci get photoprism.@main[0].password 2>/dev/null`
[ -z "$password" ] && password=password

uci -q batch <<-EOF >/dev/null || exit 1
    set photoprism.@main[0].config_path="$ISTORE_CONF_DIR/PhotoPrism"
    set photoprism.@main[0].password="$password"
    set photoprism.@main[0].picture_path=""
    commit photoprism
EOF

/usr/libexec/istorec/photoprism.sh install


[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_DL_DIR" ] && exit 1
[ -z "$ISTORE_CACHE_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set qbittorrent.main.profile="$ISTORE_CONF_DIR/qBittorrent"
    set qbittorrent.main.SavePath="$ISTORE_DL_DIR/qBittorrent"
    set qbittorrent.main.TempPathEnabled=1
    set qbittorrent.main.TempPath="$ISTORE_CACHE_DIR/qBittorrent"
    set qbittorrent.main.enabled=1
    commit qbittorrent
EOF

mkdir -p "$ISTORE_DL_DIR/qBittorrent" "$ISTORE_CACHE_DIR/qBittorrent"
chmod 777 "$ISTORE_DL_DIR/qBittorrent" "$ISTORE_CACHE_DIR/qBittorrent"

/etc/init.d/qbittorrent restart

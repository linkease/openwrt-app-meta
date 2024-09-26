
[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_DL_DIR" ] && exit 1
[ -z "$ISTORE_CACHE_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set qbittorrent_ee.main.profile="$ISTORE_CONF_DIR/qBittorrentEE"
    set qbittorrent_ee.main.SavePath="$ISTORE_DL_DIR/qBittorrentEE"
    set qbittorrent_ee.main.TempPathEnabled=true
    set qbittorrent_ee.main.TempPath="$ISTORE_CACHE_DIR/qBittorrentEE"
    set qbittorrent_ee.main.enabled=1
    commit qbittorrent_ee
EOF

mkdir -p "$ISTORE_DL_DIR/qBittorrentEE" "$ISTORE_CACHE_DIR/qBittorrentEE"
chmod 777 "$ISTORE_DL_DIR/qBittorrentEE" "$ISTORE_CACHE_DIR/qBittorrentEE"

/etc/init.d/qbittorrent_ee restart

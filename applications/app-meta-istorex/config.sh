
[ -z "$ISTORE_CONF_DIR" ] && exit 1

LANDING_PAGE="/cgi-bin/luci/admin/services/linkeasefull/open"

[ -e /etc/config/luci ] || touch /etc/config/luci || exit 1
[ -e /etc/config/istorenas ] || touch /etc/config/istorenas || exit 1

if ! uci -q show luci.main >/dev/null; then
	uci -q set luci.main=core || exit 1
fi

if ! uci -q show luci.themes >/dev/null; then
	uci -q set luci.themes=internal || exit 1
fi

if ! uci -q show istorenas.@login[0] >/dev/null; then
	uci -q add istorenas login >/dev/null || exit 1
fi

uci -q batch <<-EOF >/dev/null || exit 1
	set luci.themes.iStoreNAS="/luci-static/istorenas"
	set luci.main.mediaurlbase="/luci-static/istorenas"
	set istorenas.@login[0].landing_page="$LANDING_PAGE"
	commit luci
	commit istorenas
EOF

rm -f /tmp/luci-indexcache /tmp/luci-indexcache.*

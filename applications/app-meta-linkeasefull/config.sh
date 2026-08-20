uci -q batch <<-EOF >/dev/null || exit 1
    set linkeasefull.@linkeasefull[0].enabled="1"
    commit linkeasefull
EOF

/etc/init.d/linkeasefull restart

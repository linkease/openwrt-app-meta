
uci -q batch <<-EOF >/dev/null || exit 1
    set linkease.@linkease[0].enabled="1"
    commit linkease
EOF

/etc/init.d/linkease restart

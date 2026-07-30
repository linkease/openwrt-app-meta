
uci -q batch <<-EOF >/dev/null || exit 1
    set linkeaselite.@linkeaselite[0].enabled="1"
    commit linkeaselite
EOF

/etc/init.d/linkeaselite restart

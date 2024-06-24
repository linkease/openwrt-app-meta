
uci -q batch <<-EOF >/dev/null || exit 1
    set istoreenhance.@istoreenhance[0].enabled="1"
    commit istoreenhance
EOF

/etc/init.d/istoreenhance restart

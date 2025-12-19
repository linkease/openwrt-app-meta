
uci -q batch <<-EOF >/dev/null || exit 1
    set fastnet.@fastnet[0].enabled="1"
    commit fastnet
EOF

/etc/init.d/fastnet restart


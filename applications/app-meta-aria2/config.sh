
[ -z "$ISTORE_CONF_DIR" ] && exit 1
[ -z "$ISTORE_DL_DIR" ] && exit 1

uci -q batch <<-EOF >/dev/null || exit 1
    set aria2.main.config_dir="$ISTORE_CONF_DIR/Aria2"
    set aria2.main.dir="$ISTORE_DL_DIR/Aria2"
    set aria2.main.enabled=1
    commit aria2
EOF

add_trackers(){
    [ -f /etc/config/aria2 ] || {
        return 1
    }

    curl --fail --show-error -o /tmp/trackerslist_best.txt https://trackerslist.com/best.txt || {
        echo "Download https://trackerslist.com/best.txt failed!" >&2
        return 1
    }

    cat /tmp/trackerslist_best.txt | grep : | sed -E 's/^(.+)$/        list bt_tracker '"'"'\1'"'"'/' >/tmp/aria2_trackerslist.txt

    local trackercount=`cat /tmp/aria2_trackerslist.txt | wc -l`

    [ "$trackercount" -gt 0 ] || {
        echo "Trackerslist is empty, abort!" >&2
        return 1
    }

    grep -vF 'list bt_tracker ' /etc/config/aria2 >/tmp/newaria2.conf
    echo >>/tmp/newaria2.conf
    cat /tmp/aria2_trackerslist.txt >>/tmp/newaria2.conf
    echo >>/tmp/newaria2.conf

    echo "Add $trackercount trackers"
    cat /tmp/newaria2.conf >/etc/config/aria2
}

add_trackers

/etc/init.d/aria2 restart

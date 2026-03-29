#!/bin/sh
# Auto-configuration for luci-app-picoclaw
case "$1" in
    path)
        echo "Configuring PicoClaw data path..."
        ;;
    enable)
        /etc/init.d/picoclaw enable 2>/dev/null
        ;;
esac

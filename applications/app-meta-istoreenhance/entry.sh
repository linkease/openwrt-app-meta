#!/bin/sh

ISTOREENHANCE_BIN=/usr/sbin/iStoreEnhance

status(){
    local host="$1"
    [ -n "$host" ] || host=127.0.0.1
    . /usr/share/libubox/jshn.sh
    json_init
    json_add_string "app" "istoreenhance"
    json_add_boolean "docker" "0"

    if [ -x "$ISTOREENHANCE_BIN" ]; then
        json_add_boolean "running" "1"
        local port=$(uci get istoreenhance.@istoreenhance[0].adminport 2>/dev/null)
        local portsec=${port:-5003}
        json_add_string "web" ":${portsec}"
        json_add_string "href" "http://$host:${portsec}/"
        json_add_string "protocol" http
        json_add_string "port" "${portsec}"
        json_add_boolean "deployed" "1"
    else
        json_add_boolean "running" "0"
        json_add_boolean "deployed" "0"
    fi

    json_dump
    json_cleanup >/dev/null
}

start(){
    echo "Start not supported for iStoreEnhance" >&2
    /etc/init.d/istoreenhance start
    return 0
}

stop(){
    echo "Stop not supported for iStoreEnhance" >&2
    /etc/init.d/istoreenhance stop
    return 0
}

ACTION=${1}
shift 1
[ -z "${ACTION}" ] && ACTION=help

case ${ACTION} in
  "status" | "start" | "stop")
    ${ACTION} "$@"
  ;;
  *)
    echo "Unknown Action" >&2
    exit 1
  ;;
esac
  *)
    echo "Unknown Action" >&2
    exit 1
  ;;
esac

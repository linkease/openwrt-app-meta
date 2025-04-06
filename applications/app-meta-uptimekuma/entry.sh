#!/bin/sh

ISTOREC_SCRIPT=/usr/libexec/istorec/uptimekuma.sh

status(){
    local host="$1"
    [ -n "$host" ] || host=127.0.0.1
    . /usr/share/libubox/jshn.sh
    json_init
    json_add_string "app" "uptimekuma"
    json_add_boolean "docker" "1"

    local status=`$ISTOREC_SCRIPT status 2>/dev/null`
    if [ "$status" = "running" ]; then
        json_add_boolean "running" "1"
        local port=`$ISTOREC_SCRIPT port`
        local portsec=${port:-3001}
        json_add_string "web" ":${portsec}"
        json_add_string "href" "http://$host:${portsec}/"
        json_add_string "protocol" http
        json_add_string "port" ${portsec}
    else
        json_add_boolean "running" "0"
        if [ -z "$status" ]; then
            json_add_boolean "deployed" "0"
        else
            json_add_boolean "deployed" "1"
        fi
    fi

    json_dump
    json_cleanup >/dev/null
}

start(){
    # [ -z "`$ISTOREC_SCRIPT status`" ] && $ISTOREC_SCRIPT install && sleep 5
    [ -z "`$ISTOREC_SCRIPT status`" ] && return 1
    [ "`$ISTOREC_SCRIPT status`" = "running"] || $ISTOREC_SCRIPT start
}

stop(){
    [ "`$ISTOREC_SCRIPT status`" != "running"] || $ISTOREC_SCRIPT stop
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

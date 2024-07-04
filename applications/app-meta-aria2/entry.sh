#!/bin/sh

parse_aria2_config(){
    . /lib/functions.sh
    config_load aria2
    config_get rpc_listen_port main rpc_listen_port "6800"
    config_get rpc_auth_method main rpc_auth_method "none"
    [ "$rpc_auth_method" = "token" ] && config_get rpc_secret main rpc_secret
    [ "$rpc_auth_method" = "user_pass" ] && {
        config_get rpc_user main rpc_user
        config_get rpc_passwd main rpc_passwd
    }
}

status(){
    local host="$1"
    [ -n "$host" ] || host=127.0.0.1
    . /usr/share/libubox/jshn.sh
    json_init
    json_add_string "app" "aria2"
    if /etc/init.d/aria2 running >/dev/null; then
        json_add_boolean "running" "1"
        parse_aria2_config >/dev/null
        json_add_string "rpcProtocol" http
        json_add_int "rpcPort" $rpc_listen_port
        json_add_string "web" "/ariang"
        local ariang_arg="#!/settings/rpc/set/http/$host/6800/jsonrpc"
        [ -n "$rpc_secret" ] && {
            local secret_b64=$(echo -n "$rpc_secret" | base64 | sed -e 's/=//g' -e 's/+/-/g' -e 's#/#_#g')
            ariang_arg="$ariang_arg/$secret_b64"
        }
        json_add_string "href" "/ariang/$ariang_arg"
        json_add_object "auth"
        json_add_string "method" "$rpc_auth_method"
        [ -n "$rpc_secret" ] && json_add_string "token" "$rpc_secret"
        [ -n "$rpc_user" ] && json_add_string "user" "$rpc_user"
        [ -n "$rpc_passwd" ] && json_add_string "passwd" "$rpc_passwd"
        json_close_object
    else
        json_add_boolean "running" "0"
    fi

    json_dump
    json_cleanup >/dev/null
}

start(){
    uci -q batch <<-EOF >/dev/null || exit 1
        set aria2.main.enabled=1
        commit aria2
EOF
    /etc/init.d/aria2 start
}

stop(){
    uci -q batch <<-EOF >/dev/null || exit 1
        set aria2.main.enabled=0
        commit aria2
EOF
    /etc/init.d/aria2 stop
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

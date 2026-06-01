#!/bin/sh

status(){
	local host="$1"
	[ -n "$host" ] || host=127.0.0.1
	. /usr/share/libubox/jshn.sh
	json_init
	json_add_string "app" "baidudrive"
	json_add_boolean "docker" "0"

	local port
	port="$(uci get baidudrive.@baidudrive[0].port 2>/dev/null)"
	[ -n "$port" ] || port="8080"

	if pidof baidudrive >/dev/null 2>&1; then
		json_add_boolean "running" "1"
		json_add_string "web" ":${port}"
		json_add_string "href" "http://$host:${port}/"
		json_add_string "protocol" http
		json_add_string "port" "${port}"
		json_add_boolean "deployed" "1"
	else
		json_add_boolean "running" "0"
		if [ -x /etc/init.d/baidudrive ]; then
			json_add_boolean "deployed" "1"
		else
			json_add_boolean "deployed" "0"
		fi
	fi

	json_dump
	json_cleanup >/dev/null
}

start(){
	/etc/init.d/baidudrive start
}

stop(){
	/etc/init.d/baidudrive stop
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

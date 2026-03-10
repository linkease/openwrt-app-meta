#!/bin/sh

status(){
	local host="$1"
	[ -n "$host" ] || host=127.0.0.1
	. /usr/share/libubox/jshn.sh
	json_init
	json_add_string "app" "kai"
	json_add_boolean "docker" "0"

	local port
	port="$(uci get kai.@kai[0].port 2>/dev/null)"
	local portsec=${port:-8197}

	if pidof kai_bin >/dev/null 2>&1; then
		json_add_boolean "running" "1"
		json_add_string "web" ":${portsec}"
		json_add_string "href" "http://$host:${portsec}/"
		json_add_string "protocol" http
		json_add_string "port" "${portsec}"
		json_add_boolean "deployed" "1"
	else
		json_add_boolean "running" "0"
		if [ -x /etc/init.d/kai ]; then
			json_add_boolean "deployed" "1"
		else
			json_add_boolean "deployed" "0"
		fi
	fi

	json_dump
	json_cleanup >/dev/null
}

start(){
	/etc/init.d/kai start
}

stop(){
	/etc/init.d/kai stop
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


#!/bin/sh

status(){
	local host="$1"
	[ -n "$host" ] || host=127.0.0.1
	. /usr/share/libubox/jshn.sh
	json_init
	json_add_string "app" "kaiplus"
	json_add_boolean "docker" "0"

	local port
	port="$(uci get kaiplus.@kaiplus[0].port 2>/dev/null)"
	local portsec=${port:-8198}

	if pidof kaiplus_bin >/dev/null 2>&1; then
		json_add_boolean "running" "1"
		json_add_string "web" ":${portsec}"
		json_add_string "href" "http://$host:${portsec}/"
		json_add_string "protocol" http
		json_add_string "port" "${portsec}"
		json_add_boolean "deployed" "1"
	else
		json_add_boolean "running" "0"
		if [ -x /etc/init.d/kaiplus ]; then
			json_add_boolean "deployed" "1"
		else
			json_add_boolean "deployed" "0"
		fi
	fi

	json_dump
	json_cleanup >/dev/null
}

start(){
	/etc/init.d/kaiplus start
}

stop(){
	/etc/init.d/kaiplus stop
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

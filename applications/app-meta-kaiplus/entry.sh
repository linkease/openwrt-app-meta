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
	local portsec=${port:-8189}
	local base_path
	base_path="$(uci get kaiplus.@kaiplus[0].base_path 2>/dev/null)"
	local basepath=${base_path:-/apps/kaiplus/}
	local external_port_enabled
	external_port_enabled="$(uci get kaiplus.@kaiplus[0].external_port_enabled 2>/dev/null)"
	case "$basepath" in
		/*) ;;
		*) basepath="/$basepath" ;;
	esac
	case "$basepath" in
		*/) ;;
		*) basepath="$basepath/" ;;
	esac

	if pidof kaiplus_bin >/dev/null 2>&1; then
		json_add_boolean "running" "1"
		if [ "$external_port_enabled" = "1" ]; then
			json_add_string "web" ":${portsec}"
			json_add_string "href" "http://$host:${portsec}${basepath}"
			json_add_string "port" "${portsec}"
		else
			json_add_string "web" "${basepath}"
			json_add_string "href" "/cgi-bin/luci/admin/services/kaiplus/open"
		fi
		json_add_string "protocol" http
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

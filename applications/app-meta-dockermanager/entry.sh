#!/bin/sh

status(){
	local host="$1"
	[ -n "$host" ] || host=127.0.0.1
	. /usr/share/libubox/jshn.sh
	json_init
	json_add_string "app" "dockermanager"
	json_add_boolean "docker" "1"

	local port
	port="$(uci get dockermanager.@dockermanager[0].port 2>/dev/null)"
	local portsec=${port:-8192}
		local base_path
		base_path="$(uci get dockermanager.@dockermanager[0].base_path 2>/dev/null)"
		local basepath=${base_path:-/apps/dockermanager/}
		local external_port_enabled
		external_port_enabled="$(uci get dockermanager.@dockermanager[0].external_port_enabled 2>/dev/null)"
		case "$basepath" in
			/*) ;;
			*) basepath="/$basepath" ;;
	esac
	case "$basepath" in
		*/) ;;
		*) basepath="$basepath/" ;;
	esac

		if pidof docker-manager >/dev/null 2>&1; then
			json_add_boolean "running" "1"
			if [ "$external_port_enabled" = "1" ]; then
				json_add_string "web" ":${portsec}"
				json_add_string "href" "http://$host:${portsec}${basepath}"
				json_add_string "port" "${portsec}"
			else
				json_add_string "web" "${basepath}"
				json_add_string "href" "/cgi-bin/luci/admin/services/dockermanager/open"
			fi
			json_add_string "protocol" http
			json_add_boolean "deployed" "1"
		else
		json_add_boolean "running" "0"
		if [ -x /etc/init.d/dockermanager ]; then
			json_add_boolean "deployed" "1"
		else
			json_add_boolean "deployed" "0"
		fi
	fi

	json_dump
	json_cleanup >/dev/null
}

start(){
	/etc/init.d/dockermanager start
}

stop(){
	/etc/init.d/dockermanager stop
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

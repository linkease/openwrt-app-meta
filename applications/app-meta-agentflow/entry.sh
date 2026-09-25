#!/bin/sh

status() {
	local host="$1"
	local port base_path
	[ -n "$host" ] || host=127.0.0.1

	. /usr/share/libubox/jshn.sh
	json_init
	json_add_string "app" "agentflow"
	json_add_boolean "docker" "0"

	port="$(uci -q get agentflow.@agentflow[0].port 2>/dev/null)"
	[ -n "$port" ] || port=9000
	base_path="$(uci -q get agentflow.@agentflow[0].base_path 2>/dev/null)"
	[ -n "$base_path" ] || base_path=/apps/agentflow/
	case "$base_path" in
		/*) ;;
		*) base_path="/$base_path" ;;
	esac
	case "$base_path" in
		*/) ;;
		*) base_path="$base_path/" ;;
	esac

	if pidof agentflow >/dev/null 2>&1; then
		json_add_boolean "running" "1"
		json_add_string "web" ":${port}${base_path}"
		json_add_string "href" "/cgi-bin/luci/admin/services/agentflow"
		json_add_string "protocol" "http"
		json_add_string "port" "$port"
		json_add_boolean "deployed" "1"
	else
		json_add_boolean "running" "0"
		if [ -x /etc/init.d/agentflow ]; then
			json_add_boolean "deployed" "1"
		else
			json_add_boolean "deployed" "0"
		fi
	fi

	json_dump
	json_cleanup >/dev/null
}

start() {
	/etc/init.d/agentflow start
}

stop() {
	/etc/init.d/agentflow stop
}

ACTION="${1:-help}"
[ "$#" -eq 0 ] || shift

case "$ACTION" in
	status|start|stop)
		"$ACTION" "$@"
		;;
	*)
		echo "Usage: $0 {status|start|stop}" >&2
		exit 1
		;;
esac

#!/bin/sh

ISTOREC_SCRIPT=/usr/libexec/istorec/openclawmgr.sh

status() {
	local host="$1"
	[ -n "$host" ] || host=127.0.0.1

	. /usr/share/libubox/jshn.sh
	json_init
	json_add_string "app" "openclawmgr"
	json_add_boolean "docker" "0"

	local st="$($ISTOREC_SCRIPT status 2>/dev/null)"
	if [ "$st" = "running" ]; then
		json_add_boolean "running" "1"
		local port="$($ISTOREC_SCRIPT port 2>/dev/null)"
		local portsec="${port:-18789}"
		local token="$($ISTOREC_SCRIPT token 2>/dev/null)"
		local href="http://$host:${portsec}/openclawmgr/"
		[ -n "$token" ] && href="${href}#token=${token}"
		json_add_string "web" ":${portsec}/openclawmgr/"
		json_add_string "href" "$href"
		json_add_string "protocol" "http"
		json_add_string "port" "${portsec}"
	else
		json_add_boolean "running" "0"
		if [ -z "$st" ]; then
			json_add_boolean "deployed" "0"
		else
			json_add_boolean "deployed" "1"
		fi
	fi

	json_dump
	json_cleanup >/dev/null
}

start() { $ISTOREC_SCRIPT start; }
stop() { $ISTOREC_SCRIPT stop; }

ACTION="${1:-help}"
shift 1 || true

case "$ACTION" in
	status|start|stop) "$ACTION" "$@" ;;
	*) echo "Usage: $0 {status|start|stop}" ;;
esac

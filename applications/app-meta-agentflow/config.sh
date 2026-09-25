#!/bin/sh

[ -n "$ISTORE_CONF_DIR" ] || exit 1

enabled=1
if [ -n "$ISTORE_DONT_START" ]; then
	enabled=0
fi

data_dir="$ISTORE_CONF_DIR/AgentFlow"
mkdir -p "$data_dir" || exit 1

uci -q batch <<-EOF >/dev/null || exit 1
	set agentflow.@agentflow[0].enabled="$enabled"
	set agentflow.@agentflow[0].data_dir="$data_dir"
	commit agentflow
EOF

if [ "$enabled" = "1" ]; then
	/etc/init.d/agentflow restart
else
	/etc/init.d/agentflow stop || true
fi

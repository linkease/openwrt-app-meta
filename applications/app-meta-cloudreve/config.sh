#!/bin/sh

[ -n "$ISTORE_CONF_DIR" ] || exit 1

# iStore 传入的 ISTORE_CONF_DIR 形如 /mnt/xxx/Configs
# 本插件的程序目录约定是 <磁盘>/Configs/cloudreve/，
# 所以 storage_path（UCI 里记的是磁盘挂载点）取 Configs 的上一级
BASE_DIR="${ISTORE_CONF_DIR%/}"
BASE_DIR="${BASE_DIR%/Configs}"
[ -n "$BASE_DIR" ] || exit 1
case "$BASE_DIR" in
	/*) ;;
	*) exit 1 ;;
esac

# 安装时用户勾选「启用」才会启动；iStore 用 ISTORE_DONT_START 表示不启动
ENABLED=1
if [ -n "$ISTORE_DONT_START" ]; then
	ENABLED=0
fi

# 预创建程序目录 <磁盘>/Configs/cloudreve
APP_DIR="$ISTORE_CONF_DIR/cloudreve"
mkdir -p "$APP_DIR" >/dev/null 2>&1 || exit 1

# 与本插件 UCI schema 对齐：匿名段 @cloudreve[0]，键名 storage_path / enabled
uci -q batch <<-EOF >/dev/null || exit 1
	set cloudreve.@cloudreve[0].storage_path="$BASE_DIR"
	set cloudreve.@cloudreve[0].enabled=$ENABLED
	commit cloudreve
EOF

if [ "$ENABLED" = "1" ] && [ -x /usr/libexec/istorec/cloudreve.sh ]; then
	/usr/libexec/istorec/cloudreve.sh restart || true
fi

exit 0


ISTORE_ACTION=install
[ -z "$ISTORE_DONT_START" ] || ISTORE_ACTION=stop
/usr/libexec/istorec/istoredup.sh $ISTORE_ACTION

#!/bin/sh
node=$1
if [ $# -eq 2 ]; then
    dd if=/dev/zero of=${node} bs=1k seek=384 count=129
    sync
    dd if=u-boot.imx of=$node bs=1k seek=1
    sync
    dd if=$2 of=$node bs=1 seek=1048576 skip=54
    sync
else
    echo "Usge: ./dd.sh /dev/sdX <logofilepath>"
fi

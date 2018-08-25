#!/bin/bash

make REBUILD

OSPID="$(pgrep -a qemu)"
kill -9 $OSPID

qemu-system-x86_64 -L . -m 64 -s -fda out/OS.img -localtime -M pc

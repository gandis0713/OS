#!/bin/bash

make -C build REBUILD

OSPID="$(pgrep -a qemu)"
kill -9 $OSPID

qemu-system-x86_64 -L . -m 64 -s -cdrom out/OS.iso -localtime -M pc

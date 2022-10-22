#!/bin/bash

sudo systemd-nspawn --capability CAP_SYS_ADMIN,CAP_NET_ADMIN \
	--system-call-filter="add_key keyctl bpf" \
	--bind="/dev/fuse" \
	--bind="/lib/modules/`uname -r`" \
	-b -i ../images/edgeos-core-0.1.img

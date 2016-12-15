#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Usage: $0 <target_device>"
	echo "Exmaple: $0 /dev/sdx"
	exit 1;
fi

if [[ ! -e bin/sdcard-boot0 || ! -e bin/sdcard-boot1 ]]; then
	echo "Missing final boot code, please re-run sdcard-fwbuild.sh!"
	exit 1;
fi

# TODO: We need to check that the first partition starts +24MB in to
#       avoid clashing with boot1

# First stage loader
dd if=bin/sdcard-boot0 of=$1 bs=1024 seek=8
# Second stage loader
dd if=bin/sdcard-boot1 of=$1 bs=1024 seek=19096


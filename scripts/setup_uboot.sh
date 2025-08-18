#!/bin/sh
UBOOT_PKG="$1"
if [ -z "${UBOOT_PKG}" ]; then
	echo "[ERROR] UBOOT_PKG not set"
	exit 1
fi

uboot_base_dir=${ROOTDIR}/opt/u-boot/${UBOOT_PKG}
firmware_dir=${ROOTDIR}/boot/firmware/

echo "Copying uboot"
install -D ${uboot_base_dir}/tiboot3.bin -t ${firmware_dir}
install -D ${uboot_base_dir}/tispl.bin -t ${firmware_dir}
install -D ${uboot_base_dir}/u-boot.img -t ${firmware_dir}

echo "Copying extlinux"
install -D ${uboot_base_dir}/microsd-extlinux.conf ${firmware_dir}/extlinux/extlinux.conf

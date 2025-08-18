#!/bin/sh
boot_dir=${ROOTDIR}/boot
firmware_dir=${boot_dir}/firmware
select_kernel=$(ls ${boot_dir} | grep vmlinuz- | head -n 1 | awk -F'vmlinuz-' '{print $2}')

echo "Extract compressed kernel"
cat ${boot_dir}/vmlinuz-${select_kernel} | gunzip -d > /tmp/Image
install -D /tmp/Image ${firmware_dir}/Image
gzip ${firmware_dir}/Image
rm /tmp/Image

echo "Copy devicetress"
dtbs_dir=${ROOTDIR}/usr/lib/linux-image-${select_kernel}/ti
install -D ${dtbs_dir}/*.dtb -t ${firmware_dir}/ti/

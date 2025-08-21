#!/bin/bash

mkdir -p /mnt/image
mount /dev/sr0 /mnt/image
cp /mnt/image/composer_api_3f3c1824_647.qcow2 /var/lib/libvirt/images/composer_api_disk.qcow2
chmod 700 /var/lib/libvirt/images/composer_api_disk.qcow2
umount /mnt/image
echo "Welcome to the Image Builder Service Lab" > /root/motd

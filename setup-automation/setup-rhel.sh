#!/bin/bash

# LOG=/root/setup-log
# #LOG=/dev/null

# subscription-manager config --rhsm.manage_repos=1 >> $LOG
# subscription-manager register --activationkey=${ACTIVATION_KEY} --org=12451665 --force >> $LOG

# dnf install -y libguestfs guestfs-tools >> $LOG
# hostnamectl set-hostname rhel-$(uuidgen | cut -c 32-)
# echo "export LIBGUESTFS_BACKEND=direct" >> /root/.bashrc
# exec $SHELL

mkdir -p /mnt/image
mount /dev/sr0 /mnt/image
cp /mnt/image/composer_api_3f3c1824_647.qcow2 /root/composer_api_disk.qcow2
chmod 700 /root/composer_api_disk.qcow2
umount /mnt/image


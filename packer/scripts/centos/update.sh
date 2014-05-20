#!/bin/bash

# Current running kernel on Fedora, CentOS 6 and Red Hat (RHEL) 6
latestkernel=`ls -t /boot/vmlinuz-* | sed "s/\/boot\/vmlinuz-//g" | head -n1`
KERN_DIR="/usr/src/kernels/$latestkernel"

## Export KERN_DIR ##
export KERN_DIR

echo "Kernel-dir: $KERN_DIR"

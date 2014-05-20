#!/bin/bash

# Current running kernel on Fedora, CentOS 6 and Red Hat (RHEL) 6
KERN_DIR=/usr/src/kernels/`uname -r`

## Export KERN_DIR ##
export KERN_DIR

echo "Kernel-dir: $KERN_DIR"

#!/bin/bash

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=Extra Packages for Enterprise Linux 6 - \$basearch
#baseurl=http://download.fedoraproject.org/pub/epel/6/\$basearch
mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=\$basearch
failovermethod=priority
enabled=1
gpgcheck=0
EOM

yum -y update

yum -y install gcc gcc-c++ make kernel-devel-`uname -r` kernel-headers-`uname -r` perl nfs-utils wget

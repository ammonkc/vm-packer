#!/bin/sh -eux

# Set $PUPPET_VERSION inside Packer's template. Valid options are:
#   'provisionerless' -- build a box without Puppet
#   'x.y.z'           -- build a box with version x.y.z of Puppet
#   'latest'          -- build a box with the latest version of Puppet

exists() {
  if command -v $1 &>/dev/null
  then
    return 0
  else
    return 1
  fi
}

if [ x$PUPPET_VERSION != x'provisionerless' ]; then
# Install Puppet
cat > /etc/yum.repos.d/puppetlabs.repo << EOM
[puppetlabs]
name=puppetlabs
baseurl=http://yum.puppetlabs.com/el/6/products/\$basearch
enabled=1
gpgcheck=0
EOM

yum -y install puppet facter

# /etc/init.d/ntpd start
else
  echo "Building a box without Puppet"
fi

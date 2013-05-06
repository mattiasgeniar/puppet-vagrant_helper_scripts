#!/bin/bash
CWD=`pwd`

# Run Puppet and return to the previous directory
cd /tmp/vagrant-puppet/manifests
puppet apply --fileserverconfig=/vagrant/fileserver.conf --modulepath '/etc/puppet/modules:/tmp/vagrant-puppet/modules-0' site.pp --detailed-exitcodes
cd $CWD

# == Class: vagrant_helper_scripts
#
# This class contains a set of shell scripts that can help you in developing
# puppet modules.
#
# === Parameters
#
# None yet.
#
# === Variables
#
# No variables yet.
#
# === Examples
#
#  class { vagrant_helper_scripts:
#
#  }
#
# === Authors
#
# Mattias Geniar <m@ttias.be>
#
class vagrant_helper_scripts {

  # Create the 'vagrant_puppet_runonce' script
  file { '/usr/bin/vagrant_puppet_runonce.sh':
    ensure  => file,
    mode    => '0700',  # Only root should run puppet?
    owner   => 'root',
    group   => 'root',
    source  => 'puppet:///modules/vagrant_helper_scripts/vagrant_puppet_runonce.sh',
  }
}

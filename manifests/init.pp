# == Class: hmailserver
#
# Installs hMailServer (https://www.hmailserver.com) via chocolatey
#
# === Parameters
#
# [ensure]
#   installed. No other values are currently supported.
#
# === Examples
#
#  class {'hmailserver':
#   ensure => installed,
#  }
#
# === Authors
#
# Pierrick Lozach <pierrick.lozach@inin.com>
#
# === Copyright
#
# Copyright 2015, Interactive Intelligence Inc.
#

class hmailserver(
  $ensure = installed,
  $source,
)
{

  if ($::operatingsystem != 'Windows')
  {
    err('This module works on Windows only!')
    fail('Unsupported OS')
  }

  package { 'chocolatey':
    provider => chocolatey,
  }
  
  case $ensure
  {
    installed:
    {
      notice('Installing hMail server')

      package { 'hmailserver':
        ensure => present,
      }
      
    }
    uninstalled:
    {
      notice('Uninstalling hMail server')

      package { 'hmailserver':
        ensure => absent,
      }

    }
    default:
    {
      fail("Unsupported ensure \"${ensure}\"")
    }
  }
}

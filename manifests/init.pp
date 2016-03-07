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
)
{

  if ($::operatingsystem != 'Windows')
  {
    err('This module works on Windows only!')
    fail('Unsupported OS')
  }

  case $ensure
  {
    installed:
    {
      notice('Installing hMail server')

      package { 'hmailserver':
        ensure   => present,
        provider => chocolatey,
      }

    }
    uninstalled:
    {
      notice('Uninstalling hMail server')

      package { 'hmailserver':
        ensure   => absent,
        provider => chocolatey,
      }

    }
    default:
    {
      fail("Unsupported ensure \"${ensure}\"")
    }
  }
}

# == class: hmail-install
#

class hmail-install(
  $ensure = installed,
)
{

  if ($operatingsystem != 'Windows')
  {
    err("This module works on Windows only!")
    fail("Unsupported OS")
  }

  package {
    provider => chocolatey,
  }
  
  case $ensure
  {
    installed:
    {
      notice('Installing hMail server')

      package { "hmailserver":
        ensure => present,
      }
      
    }
    uninstalled:
    {
      notice('Uninstalling hMail server')

      package { "hmailserver":
        ensure => absent,
      }

    }
    default:
    {
      fail("Unsupported ensure \"${ensure}\"")
    }
  }
}

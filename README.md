# hMail Server puppet module.

This module installs hmail server (https://www.hmailserver.com/) on Windows.
Requires Chocolatey

## Usage

Example:
```puppet
class {'hmailserver':
    ensure	=> installed,
    }
```
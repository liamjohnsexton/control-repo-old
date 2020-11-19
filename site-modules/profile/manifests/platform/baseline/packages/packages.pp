class profile::platform::baseline::packages::packages {
require ::chocolatey

  package { '7zip':
    ensure    => latest,
    provider  => 'chocolatey',
  }

  reboot { 'after':
    subscribe => Package['7zip'],
  }

}

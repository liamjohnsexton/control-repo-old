class profile::platform::baseline::users::windows {

  user { 'lsexton':
    ensure   => present,
    password => 'Puppetlabs!',
    groups   => 'Administrators',
  }

}

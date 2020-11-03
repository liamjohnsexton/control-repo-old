class profile::platform::users::windows {

  user { 'lsexton':
    ensure   => present,
    password => 'Puppetlabs!',
    groups   => 'Administrators',
  }

}

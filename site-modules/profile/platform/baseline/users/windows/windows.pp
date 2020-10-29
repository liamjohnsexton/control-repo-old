class profile::platform::baseline::users::windows {

  user { 'liam_sexton':
    ensure   => present,
    password => 'Puppetlabs!',
    groups   => ['Administrators'],
  }

}

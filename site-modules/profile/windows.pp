class profile::windows {

  user { 'liam_sexton':
    ensure   => present,
    password => 'Puppetlabs!',
    groups   => ['Administrators'],
  }

}

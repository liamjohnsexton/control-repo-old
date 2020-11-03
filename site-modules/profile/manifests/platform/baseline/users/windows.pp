class profile::platform::baseline::users::windows {

  user { 'lsexton':
    ensure   => present,
    password => 'Puppet4labs!',
    groups   => ['Administrators'],
  }

}

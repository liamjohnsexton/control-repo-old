class profile::platform::baseline::users::windows {

  user { 'liam_sexton':
    ensure   => present
    password => 'Puppetlabs!'
    groups   => 'Administrators'
  }

  group { 'Local Administrators':
    ensure  => present
    name    => 'Administrators'
    members => 'liam_sexton'
  }

}

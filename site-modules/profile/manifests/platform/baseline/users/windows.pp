class profile::platform::baseline::users::windows {

  user { 'lsexton':
    ensure   => present,
    password => 'Puppet4labs!',
    groups   => ['Administrators'],
  }

  file { '/var/log/new-dir':
    ensure => 'directory',
    owner  => 'lsexton',
    group  => 'Administrators',
  }
}

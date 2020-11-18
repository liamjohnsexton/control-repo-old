class profile::platform::baseline::directories::directories {

  file { 'C:\Users\Administrator\Documents\new-dir':
    ensure => 'directory',
    owner  => 'lsexton',
    group  => 'Administrators',
  }
}

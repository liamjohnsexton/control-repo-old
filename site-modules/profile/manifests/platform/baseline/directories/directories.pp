class   
  
  file { '/var/log/new-dir':
    ensure => 'directory',
    owner  => 'lsexton',
    group  => 'Administrators',
  }

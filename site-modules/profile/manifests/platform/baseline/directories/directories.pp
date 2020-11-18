class profile::platform::baseline::directories::directories {

  file { 'C:\Users\Administrator\Documents\new-dir':
    ensure => 'directory',
    owner  => 'lsexton',
    group  => 'Administrators',
  }

  acl { 'C:\Users\Administrator\Documents\new-dir':
    purge       => true, 
    permissions => [
     { identity => 'Administrator', rights => ['read'] },
     { identity => 'lsexton', rights => ['full'] }
    ],
  }

}

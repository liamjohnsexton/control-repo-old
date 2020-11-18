class profile::platform::baseline::registry::registry {

  registry_key { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}':
    ensure => present,
    name   => 'IsInstalled',
    type   => dword,
    data   => 0x00000001
  }

  #registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}':
    #ensure => present,
  #}

}

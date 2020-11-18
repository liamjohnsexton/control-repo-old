class profile::platform::baseline::registry::registry {

  registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled':
    ensure => present,
    type   => dword,
    data   => 0x00000001
  }

  registry_value { 'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Reliability\ShutdownReasonOn':
    ensure => present,
    type   => dword,
    data   => 0x00000001
  }

  registry_value { 'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Reliability\ShutdownReasonUI':
    ensure => present,
    type   => dword,
    data   => 0x00000001
  }

}

class profile::platform::baseline::packages::packages{

#doing it without chocolatey
  #archive { 'C:/Windows/Temp/7z.msi':
   #ensure => present,
   #source => 'https://www.7-zip.org/a/7z1900-x64.msi',
   #user   => 'lsexton',
   #group  => 'Administrators',
  #}

  #class { 'archive':
    #seven_zip_name     => '7-Zip New',
    #seven_zip_source   => 'C:/Windows/Temp/7z.msi',
    #seven_zip_provider => 'windows',
  #}



  #doing it with chocolatey

  class {'chocolatey':
    chocolatey_download_url         => 'https://chocolatey.org/api/v2/package/chocolatey',
    use_7zip                        => false,
    choco_install_timeout_seconds   => 2700,
  }

  package {'7z':
    ensure   => latest,
    provider => 'chocolatey',
  }

  #reboot { 'after':
   # subscribe => Package['7zip'],
  #}


}

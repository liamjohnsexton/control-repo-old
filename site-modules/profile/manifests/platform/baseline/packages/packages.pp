class profile::platform::baseline::packages::packages{

#doing it without chocolatey
  #archive { 'C:/Windows/Temp/7z.msi':
   #ensure => present,
   #source => 'https://www.7-zip.org/a/7z1900-x64.msi',
   #user   => 0,
   #group  => 0,
  #}

  #class { 'archive':
    #seven_zip_name     => '7-Zip New',
    #seven_zip_source   => 'C:/Windows/Temp/7z.msi',
    #seven_zip_provider => 'windows',
  #}

#with chocolatey
  package { '7zip':
    ensure   => '19.0',
  }

}

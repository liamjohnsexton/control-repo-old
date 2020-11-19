class profile::platform::baseline::iis::iis {

  dsc_windowsfeature {'IIS':
    dsc_ensure => 'present',
    dsc_name   => 'Web-Server',
  }

  iis_application_pool { 'minimal_site_app_pool':
    ensure                  => 'present',
    state                   => 'started',
    managed_pipeline_mode   => 'Integrated',
    managed_runtime_version => 'v4.0',
  } ->

  iis_site { 'minimal':
    ensure          => 'present',
    physicalpath    => 'c:\\inetpub\\minimal',
    applicationpool => 'minimal_site_app_pool',
    require         => File['minimal'],
  }

  file { 'minimal':
    ensure => 'present',
    path   => 'c:\\inetpub\\minimal',
  }

}

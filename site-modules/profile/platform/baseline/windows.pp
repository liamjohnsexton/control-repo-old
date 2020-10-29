class profile::platform::baseline::windows {

  # OS Specific
  case $::windows_installation_type {
    'Server': {
      include::profile::platform::baseline::users::windows
    }

    'Client': {
      include::profile::baseline::users::windows
    }
  }

}

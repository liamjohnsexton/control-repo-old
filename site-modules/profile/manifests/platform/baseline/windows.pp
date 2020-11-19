class profile::platform::baseline::windows {
#logic depending on the type of windows vm it is, only apply this class on group 

  case $::windows_installation_type {
    'Server':{
      include ::profile::platform::baseline::users::windows
      include ::profile::platform::baseline::directories::directories
      include ::profile::platform::baseline::registry::registry
      include ::profile::platform::baseline::iis::iis
      include ::profile::platform::baseline::packages::packages
    }

#numpty liam has realised he's gotta spin up a VM with internet explorer lol
    'Client':{
      include ::profile::platform::baseline::users::windows
      include ::profile::platform::baseline::directories::directories
      include ::profile::platform::baseline::packages::packages
    }
  }
}

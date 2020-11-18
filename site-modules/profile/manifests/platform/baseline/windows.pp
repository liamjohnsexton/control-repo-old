class profile::platform::baseline::windows {
#logic depending on the type of windows vm it is
  case $::windows_product_name {
    'Windows Server 2016 Standard':{
      include ::profile::platform::baseline::users::windows
      include ::profile::platform::baseline::directories::directories
      include ::profile::platform::baseline::registry::registry
      include ::profile::platform::baseline::iis::iis
  }

#numpty liam has realised he's gotta spin up a VM with internet explorer lol
    'Windows 10 Enterprise 2015 LTSB':{
      include ::profile::platform::baseline::users::windows
      include ::profile::platform::baseline::directories::directories
  }
}

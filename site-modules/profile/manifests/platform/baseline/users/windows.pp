class profile::platform::baseline::users::windows {

  user { 'lsexton':
    ensure   => present,
    password => 'Puppet4labs!',
    groups   => ['Administrators'],
  }

  local_security_policy { 'Log on as a service'}
    ensure => present,
    policy_value => 'Administrators'
}

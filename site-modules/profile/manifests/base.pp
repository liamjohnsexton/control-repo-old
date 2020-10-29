class profile::base {
  include::profile::platform::baseline::users::windows
  #the base profile should include component modules that will be on all nodes
}

class profile::logrotate {
  #the base profile should include component modules that will be on all nodes
  class { '::logrotate':
    ensure => 'latest',
    config => {
      dateext  => true,
      compress => true,
    }
  }

}

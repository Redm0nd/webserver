class profile::website {

  include 'apache'

  apache::vhost { 'localhost':
    port    => '8080',
    docroot => '/var/www/demo-website',
  }
  
  file { [ '/var/www',
           '/var/www/demo-website', ]:
    ensure => directory,
    recurse => 'true',
    mode    => '0755',
    source  => 'puppet:///modules/profile/demo-website/',
  }
}

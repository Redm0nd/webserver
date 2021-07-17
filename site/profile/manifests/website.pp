class profile::website {
  include 'nginx'

  nginx::resource::server{'localhost':
      use_default_location => false,
      www_root             => '/var/www/demo-website',
  }


  file { [ '/var/www',
           '/var/www/demo-website', ]:
    ensure => directory,
    recurse => 'true',
    mode    => '0755',
    owner   => 'nginx',
    group   => 'nginx',
    source  => 'puppet:///modules/profile/demo-website/',
  }
}

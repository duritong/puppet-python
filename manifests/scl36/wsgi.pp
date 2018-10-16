class python::scl36::wsgi(
  $wsg_pkg_name = 'rh-python36-mod_wsgi-system-httpd'
) {
  require ::scl
  package{$wsg_pkg_name:
    ensure  => 'installed',
    require => Package['apache', 'rh-python36-python-virtualenv'],
    notify  => Service['apache'],
  }
  package{"rh-python36-python-virtualenv":
    ensure => $ensure,
  }
} 

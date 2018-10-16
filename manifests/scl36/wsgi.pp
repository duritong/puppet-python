class python::scl36::wsgi(
  $wsgi_pkg_name = 'rh-python36-mod_wsgi-system-httpd'
) {
  require ::scl
  package{"rh-python36-python-virtualenv":
    ensure => 'installed',
  } -> package{$wsgi_pkg_name:
    ensure  => 'installed',
    require => Package['apache'],
    notify  => Service['apache'],
  }
}

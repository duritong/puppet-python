class python::scl36::wsgi {
  require ::scl
  package{"rh-python36-mod_wsgi":
    ensure => $ensure,
    require => Package['apache', 'rh-python36-python-virtualenv'],
    notify  => Service['apache'],
  }
  package{"rh-python36-python-virtualenv":
    ensure => $ensure,
  }
} 

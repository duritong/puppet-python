class python::setuptools {
  require python
  package{'python-setuptools':
    ensure => installed,
  }
}

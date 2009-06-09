class python::setuptools {
    include python
    package{'python-setuptools':
        ensure => installed,
    }
}

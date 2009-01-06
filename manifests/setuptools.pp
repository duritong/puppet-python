class python::setuptools {
    case $operatingsystem {
        centos: { include python::setuptools::centos }
        default: { include python::setuptools::base }
    }
}

class python::setuptools::base {
    include python
    package{'python-setuptools':
        ensure => installed,
    }

class python::setuptools::centos inherits python::setuptools::base {
    Package['python-setuptools']{
        name => 'setuptools'
    }
}

# manifests/init.pp - manage python stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3

class python {
    case $operatingsystem {
        default: { include python::base }
    }
}

class python::base {
    package{'python':
        ensure => installed,
    }
}

class python::inotify {
  require python
  package{'python-inotify':
    ensure => installed,
  }
}

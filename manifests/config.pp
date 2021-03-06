# == Class nscd::config
# Configures nscd.
#
class nscd::config inherits nscd {
  file{'/etc/nscd.conf':
    ensure  => present,
    content => template('nscd/nscd.conf.erb'),
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}


# == Class: riak_browser::config
#
# Manages the riak_browser config.  Not intended to be called directly.
#
#
# === Authors
#
# * Justin Lambert <mailto:jlambert@letsevenup.com>
#
#
# === Copyright
#
# Copyright 2013 EvenUp.
#
class riak_browser::config (
  $port = 9000,
) {

  file { '/opt/riak-browser/config.ru':
    ensure  => 'file',
    content => template('riak_browser/config.ru.erb'),
  }
}

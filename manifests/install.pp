# == Class: riak_browser::install
#
# Manages the riak_browser package.  Not intended to be called directly.
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
class riak_browser::install (
  $ensure = 'latest',
) {

  package { 'riak-browser':
    ensure  => $ensure,
    notify  => Class['riak_browser::service'],
  }
}

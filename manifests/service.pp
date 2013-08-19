# == Class: riak_browser::service
#
# Manages the riak_browser service.  Not intended to be called directly.
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
class riak_browser::service (

) {

  service { 'riak-browser':
    ensure  => 'running',
    enable  => true,
  }

}

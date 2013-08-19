# == Class: riak_browser
#
# This class installs and configures riak_browser from: https://github.com/jlambert121/riak-browser
#
#
# === Parameters
#
# [*ensure*]
#   String.  Version of riak-browser should be installed
#   Default: latest
#
# [*port*]
#   Integer.  Port riak-browser should listen on for connections
#   Default: 9000
#
#
# === Examples
#
# * Installation:
#     class { 'riak-browser': }
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
class riak_browser (
  $ensure = 'latest',
  $port   = 9000,
) {

  class { 'riak_browser::install':
    ensure  => $ensure,
  }

  class { 'riak_browser::config':
    port  => $port
  }

  class { 'riak_browser::service': }

  anchor { 'riak_browser::begin': } ->
  Class['riak_browser::install'] ->
  Class['riak_browser::config'] ->
  Class['riak_browser::service'] ->
  anchor { 'riak_browswer::end': }
}

What is it?
===========

A Puppet module that installs and configures [riak-browser](https://github.com/jlambert121/riak-browser).  Riak-browser is a
simple sinatra-based webapp for browsing [Riak](http://basho.com/) databases.

Released under the Apache 2.0 licence

Usage:
------
Configuration is done through class parameters.  To see an up to date list
check out the init.pp

To install:
<pre>
  class { 'riak_browser': port => 8080 }
</pre>

Dependencies:
-------------
* [puppetlabs-stdlib](https://github.com/puppetlabs/puppetlabs-stdlib)


Contact:
--------
Justin Lambert / jlambert@letsevenup.com / @jlambert121

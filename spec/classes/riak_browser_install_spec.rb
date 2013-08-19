require 'spec_helper'
 
describe 'riak_browser::install', :type => :class do

  it { should create_class('riak_browser::install') }
  it { should contain_package('riak-browser') }

end


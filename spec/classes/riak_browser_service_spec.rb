require 'spec_helper'
 
describe 'riak_browser::service', :type => :class do

  it { should create_class('riak_browser::service') }
  it { should contain_service('riak-browser') }

end


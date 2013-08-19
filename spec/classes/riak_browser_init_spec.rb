require 'spec_helper'
 
describe 'riak_browser', :type => :class do

  it { should create_class('riak_browser') }
  it { should contain_class('riak_browser::install') }
  it { should contain_class('riak_browser::service') }

end


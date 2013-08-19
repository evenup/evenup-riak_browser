require 'spec_helper'
 
describe 'riak_browser::config', :type => :class do

  it { should create_class('riak_browser::config') }
  it { should contain_file('/opt/riak-browser/config.ru') }

end


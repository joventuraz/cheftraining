require 'spec_helper'

describe 'tomcat_app::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge('tomcat_app::default') }

  it 'includes tomcat' do
    expect(chef_run).to include_recipe('tomcat')
  end
end

require 'spec_helper'

describe 'awesome::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  before do
    stub_command('/usr/sbin/apache2 -t').and_return(0)
  end

  it 'installs PHP' do
    expect(chef_run).to include_recipe('php')
  end

  it 'installs apache' do
    expect(chef_run).to include_recipe 'apache2'
  end

  it 'create template' do
    expect(chef_run).to create_template('/var/www/html/index.html').with(
      owner:   'root',
      group:  'root',
      mode: '0644',
      source: 'index.html.erb',
      cookbook: 'awesome'
     )
  end

  it 'writes correct content' do
    expect(chef_run).to render_file('/var/www/html/index.html').with_content(
      'Message')
  end
end

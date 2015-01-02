require 'serverspec'

set :backend, :exec

describe service('httpd') do
  it { should be_enabled }
  it { should be_running }
end

describe package('httpd') do
  it { should be_installed }
end

describe port(80) do
  it { should be_listening }
end

describe command('curl -l localhost') do
  its(:stdout) { should match(/Message/) }
end

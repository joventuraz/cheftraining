require 'serverspec'

set :backend, :exec

describe command('curl -v -s -o /dev/null -w "%{http_code}" localhost:8080') do
  its(:stdout) { should match /200/ }
end

describe service('tomcat6') do
  it { should be_enabled }
  it { should be_running }
end

describe port('8080') do
  it { should be_listening }
end

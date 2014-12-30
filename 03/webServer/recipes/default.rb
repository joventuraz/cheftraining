package 'httpd' do
  action :install
end

service 'httpd' do
  action [:enable, :start]
end

page_writer_file "/var/www/html/index.html" do
  action :create
  owner 'root'
  group 'root'
  mode '0644'
  content 'Hello from template :)'
  author 'Jose Ventura'
  title 'Hello Attributes'
  image_url 'https://avatars3.githubusercontent.com/u/1166126?v=3&u=e1c9db631898a7292f60856e9f80b01d87cf1631&s=140'
end

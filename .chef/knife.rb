log_level                :info
log_location             STDOUT
node_name                'cheftraining'
client_key               "#{ENV['HOME']}/.chef/cheftraining.pem"
validation_key 			 "#{ENV['HOME']}/.chef/validation.pem"
chef_server_url          'https://chef-cl.nisum.com/'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums"  )
cache_type               'BasicFile'
cookbook_path [
  "~/cheftraining/01",
  "~/cheftraining/02",
  "~/cheftraining/03",
  "~/cheftraining/04"
]
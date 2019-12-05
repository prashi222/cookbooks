#
# Cookbook:: user_add
# Recipe:: default
#
# Copyright:: 2019, For Databag, All Rights Reserved.
fwebber_password = data_bag_item('user_password','fwebber')
user 'fwebber' do
  comment 'Test user creation'
  uid 2000
  home '/home/fwebber'
  shell '/bin/bash'
  password fwebber_password['password']
end

#
# Cookbook:: my_chef_client
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
node.default['chef-client']['interval'] = '300'
include_recipe 'chef-client::default'

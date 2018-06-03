#
# Cookbook:: apache
# Recipe:: create_user
#
# Copyright:: 2018, The Authors, All Rights Reserved.

group 'web_admin'

user 'web_admin' do
  group 'web_admin'
  system true
  shell '/bin/bash'
end

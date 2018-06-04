#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package_name =
  service_name =
    case node['platform']
    when 'centos' then 'httpd'
    when 'ubuntu' then 'apache2'
    end

package package_name

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode '0644'
  owner 'web_admin'
  group 'web_admin'
end

service service_name do
  action [:enable, :start]
end

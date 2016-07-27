#
# Cookbook Name:: chef-nuc
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package ['screen', 'xhost', 'xauth', 'epel-release', 'git']

# Install chefdk
remote_file "#{Chef::Config[:file_cache_path]}/chefdk-0.16.28-1.el7.x86_64.rpm" do
  source'https://packages.chef.io/stable/el/7/chefdk-0.16.28-1.el7.x86_64.rpm'
  action :create
end
yum_package 'chefdk-0.16.28-1.el7.x86_64.rpm' do
  source "#{Chef::Config[:file_cache_path]}/chefdk-0.16.28-1.el7.x86_64.rpm"
  action :install
end

# Install vagrant
remote_file "#{Chef::Config[:file_cache_path]}/vagrant_1.8.5_x86_64.rpm" do
  source'https://releases.hashicorp.com/vagrant/1.8.5/vagrant_1.8.5_x86_64.rpm'
  action :create
end
yum_package "vagrant_1.8.5_x86_64.rpm" do
  source "#{Chef::Config[:file_cache_path]}/vagrant_1.8.5_x86_64.rpm"
  action :install
end

# Install virtualbox
remote_file "#{Chef::Config[:file_cache_path]}/VirtualBox-5.1-5.1.2_108956_el7-1.x86_64.rpm" do
  source "http://download.virtualbox.org/virtualbox/5.1.2/VirtualBox-5.1-5.1.2_108956_el7-1.x86_64.rpm"
  action :create
end
yum_package "VirtualBox-5.1-5.1.2_108956_el7-1.x86_64.rpm" do
  source "#{Chef::Config[:file_cache_path]}/VirtualBox-5.1-5.1.2_108956_el7-1.x86_64.rpm"
  action :install
end

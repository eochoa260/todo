#
# Cookbook Name:: NodeJs
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'NodeJs::directory'
include_recipe 'NodeJs::install'
include_recipe 'NodeJs::config'
include_recipe 'NodeJs::service'
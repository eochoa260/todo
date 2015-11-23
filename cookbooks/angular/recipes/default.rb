#
# Cookbook Name:: angular
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'angular::directory'
include_recipe 'angular::install'
include_recipe 'angular::config'
include_recipe 'angular::service'
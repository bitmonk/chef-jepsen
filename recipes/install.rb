#
# Cookbook Name:: jepsen
# Recipe:: install
#
# Copyright (C) 2015 Justin Alan Ryan
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'apt'

case node['platform']
when 'ubuntu'
  include_recipe 'apt'
  apt_repository 'openjdk-r-ppa' do
    uri 'ppa:openjdk-r'
    distribution node['lsb']['codename']
  end
end


include_recipe 'java'
include_recipe 'lein'

install_deps = %w{lxc bridge-utils libvirt-bin debootstrap clusterssh dnsmasq git}

install_deps.each do |dep|
  package dep
end


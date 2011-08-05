#
# Cookbook Name:: cis_benchmark
# Recipe:: redhat_ssh
#
# Copyright 2011, Joshua Timberman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# CIS RH Benchmark section 2.3: Configure SSH

%w{ openssh openssh-clients openssh-server }.each do |pkg|

  package pkg do
    action :upgrade
  end
  
end

%w{ ssh_config sshd_config }.each do |conf|
  
  template "/etc/ssh/#{conf}" do
    source "#{conf}.erb"
    mode 0600
    owner "root"
    group "root"
    notifies :reload, "service[sshd]", :immediately
  end

end

service "sshd" do
  supports :restart => true, :reload => true, :status => true
  action [ :enable, :start ]
end

#
# Cookbook Name:: cis-benchmark
# Recipe:: redhat_cron_allow
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

%w{ at cron }.each do |f|
  file "/etc/#{f}.allow" do
    content node['cis_benchmark']['redhat']['cron_allow'].join("\n")
    owner "root"
    group "root"
    mode 0400
  end
end

file "/etc/crontab" do
  owner "root"
  group "root"
  mode 0400
end

directory "/var/spool/cron" do
  owner "root"
  group "root"
  mode 0700
end

%w{ d hourly daily weekly monthly }.each do |d|
  directory "/etc/cron.#{d}" do
    owner "root"
    group "root"
    mode 0700
  end
end

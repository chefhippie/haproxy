#
# Cookbook Name:: haproxy
# Attributes:: default
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
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

default["haproxy"]["packages"] = %w(
  haproxy
)

default["haproxy"]["zypper"]["enabled"] = true
default["haproxy"]["zypper"]["alias"] = "server-http"
default["haproxy"]["zypper"]["title"] = "Server HTTP"
default["haproxy"]["zypper"]["repo"] = "http://download.opensuse.org/repositories/server:/http/openSUSE_#{node["platform_version"]}/"
default["haproxy"]["zypper"]["key"] = "#{node["haproxy"]["zypper"]["repo"]}repodata/repomd.xml.key"

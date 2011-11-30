#
# Author:: Mat Schaffer (<mat@schaffer.me>)
# Cookbook Name:: winsw
# Provider:: wrapper
#
# Copyright:: 2011, Mat Schaffer
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

require 'chef/mixin/shell_out'

include Chef::Mixin::ShellOut

action :install do
  status = install_wrapper(@new_resource.executable)
  @new_resource.updated_by_last_action(true) if status
end

def install_wrapper(name)
  Chef::Log.debug("Processing #{@new_resource} as a winsw installer.")
  Chef::Log.info("Starting installation...")
  shell_out!("#{name} install", {:returns => [0,42]})
end
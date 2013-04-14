# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'net/ssh'

When /^I add SSH access from my current IP to the security group$/ do
  @my_ip = `dig +short myip.opendns.com @resolver1.opendns.com`.strip
  @security_group.authorize_ingress(:tcp, 22, "#{@my_ip}/0")
end

When /^I should be able to ssh to the elastic ip as "([^\"]*)"$/ do |username|

#puts "instance id: #{@instance.id}"
#puts "username: #{username}"
#puts "my_ip: #{@my_ip}"
#puts "security group: #{@security_group.name}"
#puts "elastic ip: #{@elastic_ip.ip_address}"
#puts "instance ip: #{@instance.ip_address}"
#puts "private key: #{@key_pair.private_key}"
#puts "instance status: #{@instance.status}"

  #sleep(60)

  eventually do
    ssh = Net::SSH.start(@instance.ip_address, username,
                         :key_data => [@key_pair.private_key],
                         :paranoid => false)
    files = ssh.exec!("ls -la")
    ssh.close
  end
  #puts files

end

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

When /^I allocate an elastic ip$/ do
  @elastic_ip = @ec2.elastic_ips.allocate
  @allocated_elastic_ips << @elastic_ip
end

When /^I allocate a VPC elastic ip$/ do
  @elastic_ip = @ec2.elastic_ips.allocate :vpc => true
  @allocated_elastic_ips << @elastic_ip
end

When /^I list allocated elastic ips$/ do
  @elastic_ips = @ec2.elastic_ips.to_a
end

Then /^The list should contain the elastic ip$/ do
  @elastic_ips.should include(@elastic_ip)
end

When /^I release the elastic ip address$/ do
  @elastic_ip.release
end

Then /^The list should not contain the elastic ip$/ do
  @elastic_ips.should_not include(@elastic_ip)
end

When /^I associate the elastic ip with the instance$/ do
  @instance.associate_elastic_ip(@elastic_ip)
end

Then /^The instance should eventually have the new elastic ip$/ do
  eventually do
    @instance.ip_address.should == @elastic_ip.ip_address
  end
end

When /^I compute a map of public IP address to instance ID$/ do
  @ec2.elastic_ips.inject({}) do |hash, ip|
    hash[ip.ip_address] = ip.instance_id
    hash
  end
end

When /^I count the elastic IPs in my account$/ do
  @ec2.elastic_ips.inject(0) { |count, ip| count + 1 }
end

Then /^the instance public ip address should match the elastic ip address$/ do
  @instance.ip_address.should == @elastic_ip.ip_address
end

When /^I disassociate the elastic ip address$/ do
  @elastic_ip.disassociate
end

Then /^the elastic ip should not exist$/ do
  eventually do
    @elastic_ip.exists?.should == false
  end
end

When /^I associate the network interface to the elastic ip$/ do
  @elastic_ip.associate :network_interface => @network_interface
end

Then /^the elastic ip should be assigned to the network interface$/ do
  @elastic_ip.network_interface.should == @network_interface
end


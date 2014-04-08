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

When /^I create a load balancer$/ do

  name = "ruby-test-#{Time.now.to_i}-#{rand(1000)}"

  @load_balancer = @elb.load_balancers.create(name,
    :availability_zones => %w(us-east-1b us-east-1c),
    :listeners => {
      :instance_port => 80,
      :instance_protocol => :http,
      :load_balancer_port => 80,
      :protocol => :http,
  })

  @created_load_balancers << @load_balancer

end

Given /^I create a load balancer with the following availability zones:$/ do |table|

  name = "ruby-test-#{Time.now.to_i}"

  zones = []
  table.hashes.each do |hash|
    zones << hash["AZ_NAME"]
  end

  @load_balancer = @elb.load_balancers.create(name,
    :availability_zones => zones,
    :listeners => {
      :instance_port => 80,
      :instance_protocol => :http,
      :load_balancer_port => 80,
      :protocol => :http,
  })

  @created_load_balancers << @load_balancer

end

Then /^the load balancer should have a dns endpoint$/ do
  @load_balancer.dns_name.should be_a(String)
end

When /^I delete the load balancer$/ do
  @load_balancer.delete
end

Then /^the load balancer should exist$/ do
  @load_balancer.exists?.should == true
end

Then /^the load balancer should not exist$/ do
  @load_balancer.exists?.should == false
end

Then /^the load balancer should exist in the list of load balancers$/ do
  @elb.load_balancers.should include(@load_balancer)
end

When /^I update the health check configuration with:$/ do |table|
  opts = {}
  table.hashes.each do |hash|
    opt_name = hash['OPT_NAME'].to_sym
    opt_value = hash['OPT_VALUE']
    opts[opt_name] = opt_name == :target ? opt_value : opt_value.to_i
  end
  @load_balancer.configure_health_check(opts)
end

Then /^the health check configuration should have the following values:$/ do |table|

  config = @load_balancer.health_check_configuration

  table.hashes.each do |hash|
    opt_name = hash['OPT_NAME'].to_sym
    opt_value = hash['OPT_VALUE']
    opt_value = opt_name == :target ? opt_value : opt_value.to_i
    config[opt_name].should == opt_value
  end

end

When /^I authorize ingress for the load balancer$/ do
  @security_group.authorize_ingress(:tcp, 80, @load_balancer)
end

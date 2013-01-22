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

When /^I request to run an instance with the following parameters:$/ do |table|
  opts = {}
  table.hashes.each do |h|
    opts[h["parameter"].to_sym] =
      case h["parameter"]
      when "disable_api_termination", "monitoring_enabled"
        h["value"] == "true"
      else
        h["value"]
      end
  end

  if opts[:security_groups]
    opts[:security_groups] = [opts[:security_groups]]
  end

  opts[:subnet] = @subnet if @run_in_vpc

  begin
    @instance = @result = @ec2.instances.create(opts)
    @started_instances << @instance
  rescue => e
    @error = e
    puts e.message
  end

  sleep 0.1
end


Given /^I request to run vpc instance in the subnet$/ do
  opts = {}
  opts[:subnet] = @subnet
  opts[:image_id] = 'ami-8c1fece5'
  @instance = @ec2.instances.create(opts)
  @started_instances << @instance
end


When /^I request to run between (\d+) and (\d+) instances with the following parameters:$/ do |min, max, table|
  opts = {}
  table.hashes.each do |h|
    opts[h["parameter"].to_sym] = h["value"]
  end
  @instances = @result =
    @ec2.instances.create(opts.merge(:count => (min.to_i)..(max.to_i)))
  @started_instances += @instances
end

When /^I request to run an instance of "([^\"]*)" with the following block device mappings:$/ do |ami_id, string|
  mappings = eval(string)
  @instance = @result = @ec2.instances.create(:image_id => ami_id,
                                              :block_device_mappings => mappings)
  @started_instances << @instance
end

Given /^I request to run an instance of "([^\"]*)" using the key pair$/ do |image_id|
  @instance = @result = @ec2.instances.create(:image_id => image_id,
                                              :key_pair => @key_pair)
  @started_instances << @instance
end

Then /^The result should be an instance object$/ do
  @result.should be_an(EC2::Instance)
end

Then /^The result should be an array of instance objects$/ do
  @result.should be_an(Array)
  @result.each { |i| i.should be_an(EC2::Instance) }
end

When /^I terminate the instance$/ do
  @instance.terminate
end

Then /^the instance status should eventually be "([^\"]*)"$/ do |status|
  eventually do
    @instance.status.should == status.tr("-","_").to_sym
  end
end

When /^I ask for the list of instances$/ do
  @result = @ec2.instances.to_a
end

Then /^the instance I started should be in the list$/ do
  @result.should include(@instance)
end

Given /^I wait for the instance status to be "([^\"]*)"$/ do |status|
  step %(the instance status should eventually be "#{status}")
end

When /^I reboot the instance$/ do
  @instance.reboot
end

When /^I stop the instance$/ do
  @instance.stop
end

When /^I start the instance$/ do
  @instance.start
end

When /^I ask for the instance "([^\"]*)" by ID$/ do |id|
  @instance = @result = @ec2.instances[id]
end

Then /^the result should be an instance object$/ do
  @result.should be_an(EC2::Instance)
end

When /^I ask if the instance exists$/ do
  @result = @instance.exists?
end

Given /^I wait for the instance to exist$/ do
  eventually { @instance.should exist }
end

When /^I compute a hash of instance IDs mapped to instance status$/ do
  @ec2.instances.inject({}) do |hash, instance|
    hash[instance.id] = instance.status
    hash
  end
end

When /^I get a list of instances sorted by launch time$/ do
  @ec2.instances.sort_by(&:launch_time)
end

When /^I get the instance status$/ do
  @result = @instance.status
end

Then /^an error should have been raise with a message like$/ do |pattern|
  @error.should be_a(StandardError)
  @error.message.should match(pattern)
end


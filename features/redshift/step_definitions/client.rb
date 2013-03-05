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


Then /^I should get back a list of clusters$/ do
  @response[:clusters].should be_an(Array)
end

Given /^I create a Redshift cluster security group with prefix name "(.*?)"$/ do |prefix|
  @cluster_security_group_name = unique_name(prefix)
  options = {
    :description => 'description',
    :cluster_security_group_name => @cluster_security_group_name,
  }
  begin
    @response = @client.create_cluster_security_group(options)
  rescue => @error
  end
end

Given /^the Redshift cluster security group name is in the result$/ do
  @response[:cluster_security_group_name].should eq(@cluster_security_group_name)
end

Given /^I describe Redshift cluster security groups$/ do
  @response = @client.describe_cluster_security_groups({
    :cluster_security_group_name => @cluster_security_group_name
  })
end

Then /^the Redshift cluster security group should be in the list$/ do
  @response[:cluster_security_groups].map{|g| g[:cluster_security_group_name] }.
    should include(@cluster_security_group_name)
end

Then /^I delete the Redshift cluster security group$/ do
  @client.delete_cluster_security_group({
    :cluster_security_group_name => @cluster_security_group_name,
  })
end

Then /^the error message should be:$/ do |message|
  @error.message.should eq(message)
end

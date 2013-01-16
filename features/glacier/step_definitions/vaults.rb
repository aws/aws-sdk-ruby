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


When /^I create a glacier vault$/ do
  @vault_name = "ruby-integration-test-#{Time.now.to_i}"
  @vault = @glacier.vaults.create(@vault_name)
  @created_vaults << @vault
end

Then /^the vault should exist$/ do
  @vault.exists?.should eq(true)
end

When /^I delete the vault$/ do
  @vault.delete
end

Then /^the vault should not exist$/ do
  @vault.exists?.should eq(false)
end

When /^I set the vault configuration notifications for the following events:$/ do |table|
  events = table.hashes.map{|h| h['EVENT'] }
  @vault.configure_notifications(@topic, events)
end

Then /^the vault configuration notification should have the correct topic$/ do
  @vault.notification_configuration.topic.should eq(@topic)
end

Then /^the vault configuration notification should have the following events:$/ do |table|
  events = table.hashes.map{|h| h['EVENT'] }.sort
  @vault.notification_configuration.events.sort.should eq(events)
end

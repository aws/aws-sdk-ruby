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

Then /^the snapshot volume ID should match the volume it was created from$/ do
  @snapshot.volume_id.should == @volume.id
end

Then /^the snapshot status should be one of:$/ do |table|
  table.raw.flatten.map { |status| status.to_sym }.should include(@snapshot.status)
end

Then /^the snapshot start time should be within a minute of now$/ do
  @snapshot.start_time.should be_within(60).of(Time.now)
end

Then /^the snapshot progress should be between (\d+) and (\d+)$/ do |low, high|
  @snapshot.progress.should be_an(Integer)
  ((low.to_i)..(high.to_i)).should include(@snapshot.progress)
end

Then /^the snapshot owner ID should be the account ID$/ do
  @snapshot.owner_id.should == @test_config["account_id"]
end

Then /^the snapshot volume size should be (\d+)$/ do |size|
  @snapshot.volume_size.should == size.to_i
end

Then /^the snapshot owner alias should be nil$/ do
  @snapshot.owner_alias.should be_nil
end

Given /^I create a snapshot with description "([^\"]*)"$/ do |description|

  step %(I create a volume)

  # it can take a while before the volume is in a state where snapshots
  # are allowed
  eventually do
    @snapshot = @volume.create_snapshot(description)
  end

  @created_snapshots << @snapshot

end

Then /^the snapshot description should be "([^\"]*)"$/ do |description|
  @snapshot.description.should == description
end

Then /^the snapshot create volume permissions should be empty$/ do
  @snapshot.create_volume_permissions.should be_empty
end

Then /^the snapshot should be private$/ do
  @snapshot.should be_private
end

When /^I make the snapshot public$/ do
  @snapshot.public = true
end

Then /^the snapshot should be public$/ do
  @snapshot.should be_public
end

Given /^I add snapshot create volume permissions for the user "([^\"]*)"$/ do |user_id|
  @snapshot.permissions.add user_id
end

Given /^the snapshot create volume permissions should include:$/ do |table|
  table.rows.flatten.each do |user_id|
    @snapshot.permissions.should include(user_id)
  end
end

When /^I remove snapshot create volume permissions for the user "([^\"]*)"$/ do |user_id|
  @snapshot.permissions.remove user_id
end

When /^I reset the snapshot create volume permissions$/ do
  @snapshot.permissions.reset
end

When /^I get the snapshot create volume permissions$/ do
  @snapshot.permissions.to_a
end

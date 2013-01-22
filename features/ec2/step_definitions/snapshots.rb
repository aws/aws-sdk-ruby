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

When /^I create a snapshot from the volume$/ do
  @snapshot = @result = @volume.create_snapshot
  @created_snapshots << @snapshot
end

Then /^the result should be a snapshot$/ do
  @result.should be_an(EC2::Snapshot)
end

When /^I ask for the list of snapshots$/ do
  @result = @ec2.snapshots.to_a
end

Then /^the snapshot I created should be in the list$/ do
  @result.should include(@snapshot)
end

When /^I delete the snapshot$/ do
  @snapshot.delete
end

Then /^the snapshot should eventually not exist$/ do
  eventually { @snapshot.exists?.should be_false }
end

Given /^I ask for the snapshot "([^\"]*)" by ID$/ do |id|
  @snapshot = @result = @ec2.snapshots[id]
end

When /^I ask if the snapshot exists$/ do
  @result = @snapshot.exists?
end

Given /^I create a snapshot$/ do
  step %(I create a volume)
  @snapshot = @volume.create_snapshot
  @created_snapshots << @snapshot
end

When /^I find the largest snapshot$/ do
  @ec2.snapshots.map { |snapshot| snapshot.volume_size }.max
end

When /^I get all snapshots grouped by owner ID$/ do
  @ec2.snapshots.inject({}) do |hash, snapshot|
    (hash[snapshot.owner_id] ||= []) << snapshot
    hash
  end
end

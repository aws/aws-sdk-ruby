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

Then /^the volume size should be (\d+)$/ do |size|
  @volume.size.should == size.to_i
end

Then /^the volume availability zone should be "([^\"]*)"$/ do |zone|
  sleep 1
  @volume.availability_zone.to_s.should == zone
end

Then /^the volume create time should be within an hour of now$/ do
  @volume.create_time.should be_a(Time)
  @volume.create_time.should be_within(60).of(Time.now)
end

Then /^the volume snapshot should match the snapshot it was created from$/ do
  @volume.snapshot.should == @snapshot
end

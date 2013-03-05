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

Then /^the image owner ID should eventually be the account ID$/ do
  @image.owner_id.should == @test_config["account_id"]
end

When /^I ask if the image is public$/ do
  @result = @image.public?
end

Then /^the image (.*) should eventually be "([^\"]*)"$/ do |field, value|
  field = field.downcase.gsub(/\s+/,'_')
  @image.send(field).should == value
end

Then /^the image (.*) should eventually be nil$/ do |field|
  field = field.downcase.gsub(/\s+/,'_')
  @image.send(field).should be_nil
end

Then /^the image (.*) should eventually be :(\w+)$/ do |field, value|
  field = field.downcase.gsub(/\s+/,'_')
  @image.send(field).should == value.to_sym
end

Given /^I create an image from an invalid snapshot ID$/ do
  pending
#   @ec2.images.create(:name => "my-image",
#                      :root_device_name => "/dev/sda1",
#                      :block_device_mappings => {
#                        "/dev/sda1" => {
#                          :snapshot_id => "snap-deadbeef"
#                        }
#                      })
end

Then /^the image state change reasons should eventually include:$/ do |table|
  pending
  table.hashes.each do |h|
    @image.state_change_reasons.map { |scr| src.code }.
      should include(h["code"])
    scr = @image.state_change_reasons.find { |scr| scr.code == h["code"] }
    scr.message.should == h["message"]
  end
end

When /^the image block device mappings should eventually have the following mappings:$/ do |table|
  eventually do
    table.hashes.each do |h|
      mappings = @image.block_device_mappings
      mappings.should have_key(h["device name"])
      mapping = mappings[h["device name"]]
      mapping.delete_on_termination?.to_s.should == h["delete on termination"]
    end
  end
end

Then /^the image launch permissions should eventually be empty$/ do
  @image.launch_permissions.to_a.should be_empty
end

Then /^the image should be public$/ do
  @image.public?.should be_true
end

When /^I make the image public$/ do
  @image.public = true
end

When /^I add image launch permissions for the user "([^\"]*)"$/ do |user_id|
  @image.launch_permissions.add(user_id)
end

Then /^the image launch permissions should eventually include:$/ do |table|
  eventually do
    permissions = @image.launch_permissions.to_a
    table.raw.each do |user_id|
      permissions.should include(user_id.flatten.first)
    end
  end
end

When /^I remove image launch permissions for the user "([^\"]*)"$/ do |user_id|
  @image.launch_permissions.remove(user_id)
end

When /^I set the image description to "([^\"]*)"$/ do |description|
  @image.description = description
end

When /^I reset the image launch permissions$/ do
  @image.launch_permissions.reset
end

When /^I get the image launch permissions$/ do
  @image.launch_permissions.to_a
end

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

After("@attachment") do |scenario|
  @volume.attachments.each do |att|
    att.delete(:force => true) rescue nil
  end
  eventually do
    @volume.status.should == :available
  end
end

When /^I create a volume with the following parameters:$/ do |table|
  opts = table.hashes.inject({}) do |opts, h|
    opts[h["parameter"].to_sym] =
      case h["parameter"]
      when "size" then h["value"].to_i
      else
        h["value"]
      end
    opts
  end
  @volume = @result = @ec2.volumes.create(opts)
  @created_volumes << @volume
end

Given /^I create a volume$/ do
  @volume = @ec2.volumes.create(:size => 1,
                                :availability_zone => @ec2.availability_zones.first)
  @created_volumes << @volume
end

When /^I create a volume from the snapshot$/ do
  eventually do
    @volume = @result = @snapshot.create_volume(@ec2.availability_zones.first)
    @created_volumes << @volume
  end
end

Then /^the result should be a volume$/ do
  @result.should be_an(EC2::Volume)
end

When /^I ask for the list of volumes$/ do
  @result = @ec2.volumes.to_a
end

Then /^the volume I created should be in the list$/ do
  @result.should include(@volume)
end

When /^I delete the volume$/ do
  @volume.delete
end

Then /^the volume state should eventually be "([^\"]*)"$/ do |state|
  @volume.state.should == state.to_sym
end

When /^I ask for the volume "([^\"]*)" by ID$/ do |id|
  @result = @volume = @ec2.volumes[id]
end

When /^I ask if the volume exists$/ do
  @result = @volume.exists?
end

Then /^the volume should( not)? have an attachment to the instance$/ do |should_not|
  should = (should_not == " not" ? :should_not : :should)
  @volume.attachments.map { |a| a.instance }.send(should, include(@instance))
end

Given /^I create a (\d+)GiB volume in the same availability zone as the instance$/ do |size|
  @result = @volume = @ec2.volumes.create(:size => size.to_i,
                                          :availability_zone =>
                                          @instance.availability_zone)
  @created_volumes << @volume
end

When /^I attach the volume to the instance as device "([^\"]*)"$/ do |device|
  @attachment = @result = @volume.attach_to(@instance, device)
end

Then /^the result should be an attachment$/ do
  @result.should be_an(EC2::Attachment)
end

Then /^the attachment status should eventually be "([^\"]*)"$/ do |status|
  eventually { @attachment.status.should == status.to_sym }
end

Then /^the attachment status should eventually reflect the detachment$/ do
  eventually { [:detaching, :detached, nil].should include(@attachment.status) }
end

When /^I detach the volume from the instance as device "([^\"]*)"$/ do |device|
  @volume.detach_from(@instance, device)
end

Then /^the volume should eventually be deleted$/ do
  eventually do
    @volume.should(satisfy do |v|
                     !v.exists? or
                       [:deleting, :deleted].include?(v.status)
                   end)
  end
end

When /^I compute a hash of volume ID to status$/ do
  @ec2.volumes.inject({}) do |hash, volume|
    hash[volume.id] = volume.status
    hash
  end
end

When /^I count the volumes in my account$/ do
  @ec2.volumes.inject(0) { |count, volume| count + 1 }
end

When /^I list the volume attachments$/ do
  @result = @volume.attachments
end

Then /^the result should include the attachment I created$/ do
  @result.should include(@attachment)
end

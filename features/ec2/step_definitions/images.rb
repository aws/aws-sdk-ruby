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

Before("@images") do
  @ec2.images.with_owner("self").filter("name", "my-image").each do |i|
    i.delete
  end
end

When /^I create an image( from the instance)? with the following parameters:$/ do |from_instance, table|
  opts = table.hashes.inject({}) do |opts, h|
    opts[h["parameter"].to_sym] =
      case h["parameter"]
      when "no_reboot" then h["value"] == "true"
      else
        h["value"]
      end
    opts
  end
  opts[:instance_id] = @instance.id unless from_instance.to_s.empty?
  @image = @ec2.images.create(opts)
  @created_images << @image
end

Then /^the image should eventually be in the list of images I own$/ do
  eventually do
    @ec2.images.with_owner("self").to_a.
      should include(@image)
  end
end

Then /^the result should be an image$/ do
  @image.should be_an(EC2::Image)
end

When /^I ask for the list of images owned by me$/ do
  @result = @ec2.images.with_owner("self").to_a
end

Then /^the image I created should be in the list$/ do
  @result.should include(@image)
end

When /^I ask for the image "([^\"]*)" by ID$/ do |id|
  @image = @result = @ec2.images[id]
end

When /^I ask if the image exists$/ do
  @result = @image.exists?
end

When /^I deregister the image$/ do
  @image.deregister
end

Then /^the image should eventually not exist$/ do
  eventually { @image.exists?.should be_false }
end

Given /^I wait for the image to exist$/ do
  eventually { @image.exists?.should be_true }
end

Given /^I create an image with the following block device mappings:$/ do |string|
  mappings = eval(string)
  @result = @image = @ec2.images.create(:name => "my-image",
                                        :root_device_name => "/dev/sda1",
                                        :block_device_mappings => mappings)
  @created_images << @image
end

When /^I compute a hash of image name to image ID for Amazon\-owned images$/ do
  @ec2.images.filter("owner-alias", "amazon").inject({}) do |hash, image|
    hash[image.name] = image.id
    hash
  end
end

When /^I sort the list of Amazon\-owned images by image location$/ do
  @ec2.images.filter("owner-alias", "amazon").sort_by(&:location)
end

When /^I compute a hash of mapped snapshot ID to image ID for Amazon\-owned images$/ do
  @ec2.images.filter("owner-alias", "amazon").inject({}) do |hash, image|
    image.block_device_mappings.each do |device, mapping|
      if mapping.respond_to?(:snapshot_id)
        hash[mapping.snapshot_id] = image
      end
    end
    hash
  end
end

Then /^the image product codes should be$/ do |table|
  @image.product_codes.sort.should == table.hashes.collect{|h| h['CODE'] }.sort
end

When /^I add the following product codes to the image:$/ do |table|
  codes = table.hashes.collect{|h| h['CODE'] }
  begin
    @image.add_product_codes(*codes)
  rescue AWS::EC2::Errors::InvalidAMIID::Malformed,
         AWS::EC2::Errors::InvalidParameterValue
    # intentional fake ami id
  end
end

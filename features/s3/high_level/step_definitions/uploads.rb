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

require 'tempfile'
require 'digest/md5'

Given /^the multipart upload threshold is (\d+)(mb|kb)$/ do |size, unit|
  bytes = size.to_i * 1024
  bytes *= 1024 if unit == "mb"
  AWS.config(:s3_multipart_threshold => bytes)
  @bucket = S3::Bucket.new(@bucket.name)
end

Given /^I have a (\d+)(mb|kb) file$/ do |size, unit|
  bytes = size.to_i * 1024
  bytes *= 1024 if unit == "mb"
  data = "!"*bytes
  @file = Tempfile.new("testfile")
  @file.write(data)
  @file.close
end

When /^I write the file to the object "([^\"]*)"$/ do |key|
  @bucket.objects[key].write(:data => @file.open)
end

Then /^the contents of object "([^\"]*)" should eventually match the file$/ do |key|
  sleep 1
  object = @bucket.objects[key]
  object.head.content_length.should == @file.size
  Digest::MD5.hexdigest(object.read).should ==
    Digest::MD5.file(@file.path).hexdigest
end

When /^I write the file to the object "([^\"]*)" with the following metadata:$/ do |key, table|
  @bucket.objects[key].write(:data => @file.open,
                             :metadata => table.rows_hash)
end

Then /^the metadata of object "([^\"]*)" should eventually be:$/ do |key, table|
  object = @bucket.objects[key]
  sleep 1 until object.head.content_length > 0
  object.head.meta.should == table.rows_hash
end

When /^I start an upload to object "([^\"]*)"$/ do |key|
  @upload = @result = @bucket.objects[key].multipart_upload
end

Then /^the result should be an upload object$/ do
  @result.should be_an(S3::MultipartUpload)
end

Then /^the list of uploads for the bucket should include the upload$/ do
  @bucket.multipart_uploads.to_a.should include(@upload)
end

When /^I ask for the list of uploads for the bucket$/ do
  @result = @bucket.multipart_uploads
end

Then /^the result should eventually include the upload I started$/ do
  eventually(30) { @result.should include(@upload) }
end

When /^I ask for the upload to "([^\"]*)" with ID "([^\"]*)"$/ do |key, id|
  @upload = @result = @bucket.objects[key].multipart_uploads[id]
end

When /^I ask if the upload exists$/ do
  @result = @upload.exists?
end

When /^I ask for the list of uploads to the object "([^\"]*)"$/ do |key|
  @result = @bucket.objects[key].multipart_uploads
end

When /^I abort the upload$/ do
  @upload.abort
end

Then /^the list of uploads for the bucket should eventually not include the upload I started$/ do
  eventually(30) { @bucket.multipart_uploads.should_not include(@upload) }
end

When /^I upload the following parts:$/ do |table|
  table.raw.flatten.each do |data|
    @upload.add_part(data)
  end
end

Then /^the parts list should include:$/ do |table|
  table.hashes.each do |h|
    @upload.parts.map { |p| p.part_number }.
      should include(h["part number"].to_i)
    @upload.parts[h["part number"].to_i].
      size.should == h["size"].to_i
  end
end

Then /^the last modified date for each part should be within a minute of now$/ do
  @upload.parts.all? do |part|
    part.last_modified.should be_within(60).of(DateTime.now)
  end
end

When /^I ask for the parts list for the upload$/ do
  # sugar
end

When /^I add a part to the upload with data "([^\"]*)"$/ do |data|
  @part = @result = @upload.add_part(data)
end

Then /^the result should be an uploaded part$/ do
  @result.should be_an(S3::UploadedPart)
end

Then /^the parts list should include the part I uploaded$/ do
  @upload.parts.should include(@part)
end

When /^I complete the upload with the parts uploaded using the object$/ do
  @upload.complete
end

When /^I complete the upload with all parts in S3$/ do
  @upload.complete(:remote_parts)
end

Given /^I get the upload again by ID$/ do
  @upload = @upload.object.multipart_uploads[@upload.id]
end

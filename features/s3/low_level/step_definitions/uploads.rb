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

When /^I ask the client to initiate a multipart upload to "([^\"]*)"$/ do |key|
  @result = @s3_client.initiate_multipart_upload(:bucket_name => @bucket_name,
                                              :key => key)
  @upload_id = @result.upload_id
  @etags = {}
end

Then /^the result should contain an upload ID$/ do
  @result.should respond_to(:upload_id)
  @result.upload_id.should_not be_empty
end

When /^I ask the client to list the multipart uploads in the bucket$/ do
  @result = @s3_client.list_multipart_uploads(:bucket_name => @bucket_name)
end

Then /^the result should include the upload ID I initiated$/ do
  @result.uploads.map { |upload| upload.upload_id }.should include(@upload_id)
end

When /^I ask the client to upload a (\d+)(mb|kb) part for "([^\"]*)" containing "([^\"]*)" as part number (\d+)$/ do |size, unit, key, contents, number|
  bytes = size.to_i * 1024
  bytes *= 1024 if unit == "mb"
  data = "!"*bytes
  data = data[0..(-1 * (contents.length + 1))] + contents
  @result = @s3_client.upload_part(:bucket_name => @bucket_name,
                                :key => key,
                                :upload_id => @upload_id,
                                :data => data,
                                :part_number => number)
  @etags[number] = @result.etag
end

When /^I ask the client to complete the upload for "([^\"]*)"$/ do |key|
  parts = []
  @etags.keys.sort.each do |part_number|
    parts << { :part_number => part_number, :etag => @etags[part_number] }
  end
  @result = @s3_client.complete_multipart_upload(:bucket_name => @bucket_name,
                                              :key => key,
                                              :upload_id => @upload_id,
                                              :parts => parts)
end

Then /^the object "([^\"]*)" should eventually have a body including the following strings:$/ do |key, table|
  sleep 1
  body = @s3_client.get_object(:bucket_name => @bucket_name,
                            :key => key).data[:data]

  table.raw.flatten.each do |str|
    body.should include(str)
  end
end

When /^I ask the client to abort the upload to "([^\"]*)"$/ do |key|
  @result = @s3_client.abort_multipart_upload(:bucket_name => @bucket_name,
                                           :key => key,
                                           :upload_id => @upload_id)
end

Then /^the upload should eventually not exist$/ do
  sleep 1
  @s3_client.list_multipart_uploads(:bucket_name => @bucket_name).
    uploads.map { |u| u.upload_id }.
    should_not include(@upload_id)
end

When /^I ask the client to list parts for the upload to "([^\"]*)"$/ do |key|
  @result = @s3_client.list_parts(:bucket_name => @bucket_name,
                               :key => key,
                               :upload_id => @upload_id)
end

Then /^the result should include a part number (\d+) that is (\d+)(mb|kb) in size$/ do |part_number, size, unit|
  bytes = size.to_i * 1024
  bytes *= 1024 if unit == "mb"
  @result.parts.map { |p| p.part_number }.should include(part_number.to_i)
  @result.parts.find { |p| p.part_number == part_number.to_i }.
    size.should == bytes
end

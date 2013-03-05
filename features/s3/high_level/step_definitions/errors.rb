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

When /^I ask for the objects from a bucket that does not exist$/ do
  begin
    @bucket_name = "!!$$$-#{Time.now.to_i}"
    @s3.buckets[@bucket_name].objects.to_a
  rescue => e
    @exception = e
  else
    fail
  end
end

Then /^I should get an? "([^\"]*)" (client|server) exception as follows:$/ do |type, cs, table|
  @exception.should be_a(cs == "client" ? Errors::ClientError : Errors::ServerError)
  klass = S3::Errors.const_get(type)
  @exception.should be_a(klass)
  table.hashes.each do |hash|
    @exception.send(hash["field"]).should == hash["value"]
  end
end

Then /^the exception object should include the bucket name$/ do
puts @exception.http_response.body
  @exception.bucket_name.should == @bucket_name
end

Then /^the exception object should include the following fields:$/ do |table|
  table.raw.each do |field|
    field = [field].flatten.first
    @exception.should respond_to(field)
    @exception.send(field).should_not be_blank
  end
end

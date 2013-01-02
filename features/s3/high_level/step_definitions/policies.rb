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

When /^I set a bucket policy$/ do
  @s3.buckets[@bucket_name].policy = valid_policy
end

Then /^the client should have made a "([^\"]*)" request to the bucket policy$/ do |method|
  r = @http_handler.requests_made.last
  r.http_method.should == method
  r.host.should == "#@bucket_name.s3.amazonaws.com"
  r.uri.should == "/?policy"
end

When /^I change the bucket policy using the OO interface$/ do
  @s3.buckets[@bucket_name].policy.change do |policy|
      policy.allow(:actions => "s3:*",
                   :resources => @bucket_name,
                   :principals => "681294939609").
        where("aws:SourceIp").is_ip_address("192.168.1.0/24",
                                            "192.168.1.1/32").
        where("aws:SourceIp").not_ip_address("192.168.1.2/32").
        where("s3:prefix").like("photos/*").
        where("aws:SecureTransport").is(true)
  end
end

When /^I ask for the bucket policy$/ do
  @result = @s3.buckets[@bucket_name].policy
end

Then /^the result should be the bucket policy$/ do
  @result.statements.size.should == 1
  stmt = @result.statements.first
  stmt.sid.should == "Stmt1296685809629"
  stmt.effect.should == "Allow"
  stmt.resources.join.should include(@bucket_name)
  stmt.principals.join.should include("681294939609")
end

Then /^the result should be nil$/ do
  @result.should be_nil
end

When /^I delete the bucket policy$/ do
  @s3.buckets[@bucket_name].policy.delete
end

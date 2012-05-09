# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

include AWS

def get_bucket
  Net::HTTP.get(URI.parse("http://#{@endpoint}/#{@bucket_name}/"))
end

When /^I call create_bucket( asynchronously)?$/ do |async|
  create_bucket_low_level(:async => !async.to_s.strip.empty?)
end

When /^I ask the client to( asynchronously)? create a bucket named "([^\"]*)"$/ do |async, bucket_name|
  async = !async.to_s.strip.empty?
  create_bucket_low_level(:bucket_name => bucket_name, :async => async)
end

When /^I ask the client to( asynchronously)? create a bucket with an invalid name$/ do |async|
  begin
    async = !async.to_s.strip.empty?
    create_bucket_low_level(:bucket_name => '$!%%', :async => async)
  rescue StandardError => e
    @error = e
  end
end

When /^I ask the client to create a bucket in "([^"]*)"$/ do |endpoint|
  pending
  create_bucket_low_level(:endpoint => endpoint)
end

When /^I ask the client to create a dns incompatible bucket$/ do
  bucket_name = "ruby_integration_test_#{Time.now.to_i}"
  create_bucket_low_level(:bucket_name => bucket_name)
end

Then /^the result should be a successful response$/ do
  @result.should be_successful
end

Then /^the bucket should exist( on completion)?$/ do |async|
  unless async.to_s.strip.empty?
    complete = false
    @result.on_complete { complete = true }
    sleep 0.1 until complete
  end
  sleep 0.5
  resp = get_bucket
  resp.should_not =~ /NoSuchBucket/
end

Then /^the client should have made a PUT request to the bucket$/ do
  r = @http_handler.requests_made.first
  r.http_method.should == "PUT"
  r.host.should == "#@bucket_name.s3.amazonaws.com"
end

Then /^the client should raise an argument error$/ do
  @error.should be_a(ArgumentError)
end

Then /^the client should not make any requests$/ do
  @http_handler.requests_made.should be_empty if @http_handler.requests_made
end

Then /^the client should have made a PUT request to the bucket\'s path in S3$/ do
  @http_handler.requests_made.should have_at_least(1).item
  r = @http_handler.requests_made.first
  r.http_method.should == "PUT"
  r.host.should == "s3.amazonaws.com"
end

When /^I ask the client to( asynchronously)? delete the bucket$/ do |async|
  @result = @s3_client.delete_bucket(:bucket_name => @bucket_name, :async => (!async.to_s.strip.empty?))
end

Then /^the bucket should not exist( on completion)?$/ do |async|
  unless async.to_s.strip.empty?
    complete = false
    @result.on_complete { complete = true }
    sleep 0.1 until complete
  end
  sleep 0.5
  resp = get_bucket
  resp.should =~ /NoSuchBucket/
end

Then /^the client should have made a DELETE request to the bucket$/ do
  @http_handler.requests_made.should have_at_least(1).item
  r = @http_handler.requests_made.last
  r.http_method.should == "DELETE"
  r.host.should == "#@bucket_name.s3.amazonaws.com"
end

When /^I ask the client to( asynchronously)? delete a bucket that does not exist$/ do |async|
  begin
    @bucket_name = "ruby-integration-test-#{Time.now.to_i}"
    @result =
      @s3_client.delete_bucket(:bucket_name => @bucket_name, :async => (!async.to_s.strip.empty?))
  rescue => e
    @error = e
  end
end

Then /^the client should raise a client error$/ do
  @error.should be_a(Errors::ClientError)
end

When /^I ask the client to( asynchronously)? list buckets$/ do |async|
  @result = @s3_client.list_buckets(:async => (!async.to_s.strip.empty?))
end

Then /^the bucket should be in the response( on completion)?$/ do |async|
  unless async.to_s.strip.empty?
    complete = false
    @result.on_complete { complete = true }
    sleep 0.1 until complete
  end
  @result.buckets.count.should >= 1
  @result.buckets.map { |b| b.name }.should include(@bucket_name)
end

Then /^the client should have made a GET request to the service$/ do
  @http_handler.requests_made.should have_at_least(1).item
  r = @http_handler.requests_made.last
  r.http_method.should == "GET"
  r.host.should == "s3.amazonaws.com"
end

Then /^the client should have made a "([^\"]*)" request to the bucket$/ do |verb|
  @http_handler.requests_made.should have_at_least(1).item
  r = @http_handler.requests_made.last
  r.http_method.should == verb
  r.host.should == "#@bucket_name.s3.amazonaws.com"
end

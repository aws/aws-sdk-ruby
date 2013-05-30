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

def build_dynamo_db_crc32(num_failing_reqs = 1, crc_enabled = true)
  @crc_handler = AWS::Core::Http::Handler.new(@http_handler) do |req, resp, read_block|
    super(req, resp, &read_block)
    if @retries < @num_failing_reqs
      resp.body = '{"TableNames":[]}'
      @retries += 1
    end
  end
  class << @crc_handler; attr_accessor :num_failing_reqs, :retries end
  @crc_handler.retries = -1
  @crc_handler.num_failing_reqs = num_failing_reqs

  @dynamo_db = AWS::DynamoDB.new :use_ssl => false, :max_retries => 2,
    :dynamo_db_crc32 => crc_enabled, :http_handler => @crc_handler
end

Given /^I turn SSL off$/ do
  @dynamo_db = AWS::DynamoDB.new(:config => @dynamo_db.config.with(:use_ssl => false))
end

Given /^my first request is corrupted with CRC checking (ON|OFF)$/ do |onoff|
  build_dynamo_db_crc32(1, onoff == "ON")
end

Given /^all of my requests are corrupted with CRC checking ON$/ do
  build_dynamo_db_crc32(2)
end

When /^I list all tables$/ do
  begin
    @list = @dynamo_db.tables.to_a
  rescue => e
    @error = e
  end
end

Then /^the request should (not )?be retried$/ do |not_retried|
  @crc_handler.retries.should.send(not_retried ? :== : :>, 0)
end

Then /^the response should (not )?contain the table$/ do |does_not_contain|
  @list.send(does_not_contain ? :should_not : :should, include(@table))
end

Then /^the request is retried the maximum number of times$/ do
  @crc_handler.retries.should >= @dynamo_db.config.max_retries
end

Then /^the request should fail with a CRC checking error$/ do
  @error.should be_a(AWS::DynamoDB::Errors::CRC32CheckFailed)
end

Given /^I have a large item "(.*?)" in the table$/ do |item|
  @item = @table.items.put({:id => item, :data => "DATA" * 10000})
end

And /^I get the attribute "(.*?)" from the key "(.*?)"$/ do |attribute, item|
  @data = @table.items[item].attributes[attribute]
end

Then /^the attribute length should be greater than (\d+)/ do |size|
  @data.size.should > size.to_i
end

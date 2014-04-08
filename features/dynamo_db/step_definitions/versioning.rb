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


Given(/^I have configured DynamoDB to use the 2012\-08\-10 API Version$/) do
  AWS.config(:dynamo_db => { :api_version => '2012-08-10' })
end

When(/^I create a new DynamoDB high\-level abstraction object$/) do
  @dynamo_db = AWS::DynamoDB.new
end

Then(/^its client should use the 2011\-12\-05 API Version$/) do
  @dynamo_db.client.should be_instance_of (AWS::DynamoDB::Client::V20111205)
end

When(/^I create a new DynamoDB low\-level client object$/) do
  @dynamo_db_client = AWS::DynamoDB::Client.new
end

Then(/^it should use the 2012\-08\-10 API Version$/) do
  @dynamo_db_client.should be_instance_of(AWS::DynamoDB::Client::V20120810)
end

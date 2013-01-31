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

When /^I ask for temporary security credentials$/ do
  @result = @session = @sts.new_session
end

Then /^the result should contain credentials$/ do
  @result.credentials.should be_a(Hash)
  @result.credentials.keys.map { |k| k.to_s }.sort.
    should == ["access_key_id",
               "secret_access_key",
               "session_token"]
end


Then /^I should be able to use the returned credentials to make EC2 requests$/ do
  AWS::EC2.new(@result.credentials).instances.to_a
end

Then /^I should be able to use the returned credentials to make SNS requests$/ do
  AWS::SNS.new(@result.credentials).topics.to_a
end

Then /^I should be able to use the returned credentials to make SQS requests$/ do
  AWS::SQS.new(@result.credentials).queues.to_a
end

Then /^I should be able to use the returned credentials to make SimpleDB requests$/ do
  AWS::SimpleDB.new(@result.credentials).domains.to_a
end

Then /^I should be able to use the returned credentials to make S3 requests$/ do
  AWS::S3.new(@result.credentials).buckets.to_a
end

When /^I ask for federated session credentials$/ do
  policy = AWS::STS::Policy.new do |p|
    p.allow(:actions => "*",
            :resources => "*")
  end
  @result = @sts.new_federated_session("Bob", :policy => policy)
end

When /^I ask for federated session credentials only allowing access to SNS$/ do
  policy = AWS::STS::Policy.new do |p|
    p.allow(:actions => "sns:*",
            :resources => "*")
  end
  @result = @sts.new_federated_session("Bob", :policy => policy)
end

Then /^I should not be able to use the returned credentials to make SQS requests$/ do
  lambda { AWS::SQS.new(@result.credentials).queues.to_a }.
    should raise_error(AWS::SQS::Errors::AccessDenied)
end

Then /^the result should include an ARN for the federated user$/ do
  @result.user_arn.should =~ /^arn:/
end

Then /^the result should include an indication of how big the policy is$/ do
  (0..100).should include(@result.packed_policy_size)
end

When /^I ask for temporary security credentials that expire in (\d+) hour$/ do |hours|
  @result = @session = @sts.new_session(:duration => hours.to_i * 60 * 60)
end

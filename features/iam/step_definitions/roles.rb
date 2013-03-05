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


Given /^I create an IAM policy$/ do
  @iam_policy_name = "ruby-integration-#{Time.now.to_i}"
  @iam_policy = AWS::IAM::Policy.new
  @iam_policy.allow(:actions => '*', :resources => '*')
end

Given /^I create an IAM role$/ do
  @iam_role_name = "ruby-integration-#{Time.now.to_i}"

  assume_role_policy_document = '{"Version":"2008-10-17","Statement":[{"Effect":"Allow","Principal":{"Service":["ec2.amazonaws.com"]},"Action":["sts:AssumeRole"]}]}'

  @response = @iam_client.create_role({
    :role_name => @iam_role_name,
    :assume_role_policy_document => assume_role_policy_document,
  })

  @iam_role_arn = @response[:role][:arn]

  @created_role_names << @iam_role_name
end

Given /^I add the IAM policy to the role$/ do
  @iam_client.put_role_policy(
    :role_name => @iam_role_name,
    :policy_name => @iam_policy_name,
    :policy_document => @iam_policy.to_json)
end

When /^I delete the IAM policy$/ do
  @iam_client.delete_role_policy(
    :role_name => @iam_role_name,
    :policy_name => @iam_policy_name)
end

When /^I delete the IAM role$/ do
  @iam_client.delete_role(:role_name => @iam_role_name)
end

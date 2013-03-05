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


Given /^I create an OpsWorks user profile$/ do
  @iam_user_arn = @user.arn
  @ops_works.client.create_user_profile(:iam_user_arn => @iam_user_arn)
end

When /^I call \#describe_user_profiles with the IAM user arn$/ do
  begin
    @response = @ops_works.client.describe_user_profiles(:iam_user_arns => [
      @iam_user_arn,
    ])
  rescue => @error
  end
end

Then /^the response should contain the user profile I created$/ do
  @response[:user_profiles][0][:iam_user_arn].should eq(@iam_user_arn)
end

Given /^I call create stack with an invalid service role arn$/ do
  begin
    @ops_works.client.create_stack({
      :name => 'test-stack-name',
      :region => 'us-east-1',
      :service_role_arn => 'arn:bogus',
      :default_instance_profile_arn => 'arn:bogus',
    })
  rescue => @error
  end
end


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

When /^I subscribe the queue to the topic$/ do
  @result = @subscription = @topic.subscribe(@queue)
end

Then /^the result should be a subscription$/ do
  @result.should be_an(SNS::Subscription)
end

Then /^the subscription should( not)? be in the list of subscriptions for the topic$/ do |should_not|
  @topic.subscriptions.send(should_not ? :should_not : :should, include(@subscription))
end

Given /^I subscribe the following HTTP endpoints to the topic:$/ do |table|
  @subscriptions = []
  table.raw.flatten.each do |endpoint|
    @subscriptions << endpoint
    @topic.subscribe(endpoint)
  end
end

When /^I ask for the list of subscriptions in my account$/ do
  @result = @sns.subscriptions
end

Then /^the result should contain the subscriptions I created$/ do
  @subscriptions.each do |endpoint|
    @result.map(&:endpoint).should include(endpoint)
  end
end

When /^I unsubscribe the queue from the topic$/ do
  @subscription.unsubscribe
end

When /^I confirm a subscription with token "([^\"]*)" and ask that unsubscribe requests be authenticated$/ do |token|
  @topic.confirm_subscription(token, :authenticate_on_unsubscribe => true)
end

Given /^I ask for the SNS subscription with ARN "([^\"]*)"$/ do |arn|
  @subscription = @result = @sns.subscriptions[arn]
end

When /^I ask if the subscription exists$/ do
  @result = @subscription.exists?
end

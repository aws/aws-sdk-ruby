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

When /^I create an SNS topic$/ do
  @topic_name = "ruby-integration-test-#{Time.now.to_i}"
  @topic = @sns.topics.create(@topic_name)
  @sns_topics_created << @topic
end

Then /^the topic should have an ARN$/ do
  @topic.arn.should match(/^arn:aws:sns:/)
end

Then /^the topic should have the correct display name$/ do
  @topic.name.should == @topic_name
end

When /^I delete the topic$/ do
  @topic.delete
end

Then /^it should appear in the topic list$/ do
  @sns.topics.should include(@topic)
end

Then /^it should not appear in the topic list$/ do
  @sns.topics.should_not include(@topic)
end

When /^I set the topic display name to "([^"]*)"$/ do |display_name|
  @topic.display_name = display_name
end

Then /^the topic \#to_h should look like:$/ do |table|
  hash = @topic.to_h
  table.hashes.each do |h|
    hash[h['KEY'].to_sym].should == h['VALUE']
  end
end

When /^I set the topic policy$/ do
  @policy = SNS::Policy.from_json("{\"Version\":\"2008-10-17\",\"Id\":\"__default_policy_ID\",\"Statement\":[{\"Action\":[\"SNS:Publish\",\"SNS:RemovePermission\",\"SNS:SetTopicAttributes\",\"SNS:DeleteTopic\",\"SNS:ListSubscriptionsByTopic\",\"SNS:GetTopicAttributes\",\"SNS:Receive\",\"SNS:AddPermission\",\"SNS:Subscribe\"],\"Sid\":\"__default_statement_ID\",\"Resource\":[\"#{@topic.arn}\"],\"Principal\":{\"AWS\":[\"*\"]},\"Condition\":{\"StringEquals\":{\"AWS:SourceOwner\":\"#{@topic.owner}\"}},\"Effect\":\"Allow\"}]}")
  @topic.policy = @policy
end

Then /^the topic policy should match$/ do
  @topic.policy.should == @policy
end

Given /^I subscribe to the topic with the queue$/ do
  @topic.subscribe(@queue)
end

When /^I publish a message to the topic$/ do
  @message = "published message"
  @topic.publish(@message)
end

Then /^The queue should eventually have the message$/ do
  received = false
  @queue.poll(:initial_timeout => false, :idle_timeout => 1) do |msg|
    msg.as_sns_message.body.should == @message
    received = true
  end
  received.should == true
end

Given /^I set the delivery policy to:$/ do |policy_string|
  @delivery_policy = eval(policy_string)
  @topic.delivery_policy = @delivery_policy
end

Then /^the delivery policy should be what was passed$/ do
  @topic.delivery_policy.should == @delivery_policy
end


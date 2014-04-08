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

When /^I create a queue$/ do
  @queue_name = "ruby-integration-test-#{Time.now.to_i + rand(1000)}"
  @result = @queue = @sqs.queues.create(@queue_name)
  @created_queues << @queue
end

Given /^I create a queue in "(.*?)"$/ do |region|
  @sqs = AWS::SQS.new(:sqs_endpoint => "sqs.#{region}.amazonaws.com")
  step "I create a queue"
end

Then /^the result should be a queue object$/ do
  @result.should be_an(SQS::Queue)
end

Then /^the queue should be in the list of all queues$/ do
  eventually(60) { @sqs.queues.should include(@queue) }
end

Given /^I create a queue with a name that starts with "([^\"]*)"$/ do |name|
  @queue_name = "#{name}-ruby-integration-test-#{Time.now.to_i}"
  @result = @queue = @sqs.queues.create(@queue_name)
  @created_queues << @queue
end

When /^I ask for the list of queues starting with "([^\"]*)"$/ do |name|
  @result = @sqs.queues.with_prefix(name)
end

Then /^the result should( not)? include the queue I created$/ do |should_not|
  eventually(60) do
    @sqs.queues.should include(@queue)
    @result.send(should_not == " not" ? :should_not : :should, include(@queue))
  end
end

Given /^I ask for the queue with URL "([^\"]*)"$/ do |url|
  @result = @queue = @sqs.queues[url]
end

When /^I ask if the queue exists$/ do
  @result = @queue.exists?
end

Given /^I wait for it to be in the list of all queues$/ do
  step "the queue should be in the list of all queues"
end

When /^I create a queue named "([^\"]*)"$/ do |name|
  @result = @queue = @sqs.queues.create(name)
  @created_queues << @queue
end

Given /^I delete the queue$/ do
  @queue.delete
end

Then /^the queue should eventually not exist$/ do
  eventually(60) { @queue.exists?.should be_false }
end

Then /^the following integer fields should be present:$/ do |table|
  table.raw.flatten.each do |field|
    @queue.send(field).should be_an(Integer)
  end
end

Then /^the following date\/time fields should contain values within the last hour:$/ do |table|
  table.raw.flatten.each do |field|
    @queue.send(field).should be_within(60*60).of(Time.now)
  end
end

Then /^the queue ARN should end with the queue name$/ do
  @queue.arn.should =~ /#{Regexp.escape(@queue_name)}$/
end

When /^I set the queue\'s (.*) to (\d+)$/ do |field, value|
  @queue.send(field.gsub(" ", "_")+"=", value.to_i)
end

Then /^the queue\'s (.*) should eventually be (\d+)$/ do |field, value|
  eventually(60) { @queue.send(field.gsub(" ", "_")).should == value.to_i }
end

When /^I access the queue by name$/ do
  @queue = @sqs.queues.named(@queue_name)
end

When /^I send the following messages in a batch:$/ do |table|
  messages = table.hashes.map{|h| h['MESSAGE'] }
  begin
    @sent = @queue.batch_send(messages)
  rescue AWS::SQS::Errors::BatchSendError => e
    @sent = e.sent
    @failures = e.failures
  end
end

Then /^(\d+) sent messages should have been returned with the correct md5:$/ do |count, table|
  @sent.size.should  == count.to_i
  @sent.map(&:md5).should == table.hashes.map{|h| h["MD5"] }
end

Then /^(\d+) message should have failed$/ do |count|
  @failures.size.should == count.to_i
end

When /^I receive (\d+) messages$/ do |count|
  @messages = @queue.receive_messages :limit => count.to_i
end

When /^I delete the messages$/ do
  @queue.batch_delete(@messages)
end

Then /^the queue should eventually have (\d+) message$/ do |count|
  @queue.visible_messages.should == count.to_i
end

Given(/^I set the "(.*?)" attribute to (\d+)$/) do |attr, value|
  @queue.send("#{attr}=", value)
end

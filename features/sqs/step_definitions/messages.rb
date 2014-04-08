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

When /^I send the message "([^\"]*)"$/ do |msg|
  @result = @queue.send_message(msg)
end

Then /^the result should include a message ID$/ do
  @result.message_id.should be_a(String)
end

Then /^the result should have an MD5 digest of "([^\"]*)"$/ do |digest|
  @result.md5.should == digest
end

Then /^I should eventually be able to receive "([^\"]*)" from the queue$/ do |msg|
  eventually(10) do
    if msg = @queue.receive_message
      msg.body.should == msg
    end
  end
end

When /^I receive a message from the queue$/ do
  eventually(10) do
    @message = @queue.receive_message
    raise "no message receieved" unless @message
  end
end

When /^I use the SQS message to construct an SNS message$/ do
  @message = AWS::SNS::Message.new(@message.body)
end

Then /^the message should be authentic$/ do
  @message.authentic?.should be(true)
end

Then(/^the message should not be authentic$/) do
  @message.authentic?.should be(false)
end

When(/^I tamper with the message body$/) do
  body = @message.body
  body = JSON.parse(body)
  body['Message'] += '(tampered)'
  @message.body.replace(JSON.dump(body))
end

When /^I receive a message with a (\d+)\-second visibility timeout$/ do |timeout|
  @queue.receive_message(:visibility_timeout => timeout.to_i)
end

Given /^I receive the message "([^\"]*)"$/ do |msg|
  eventually(10) do
    @message = @queue.receive_message
    @message.body.should == msg
  end
end

When /^I delete the message$/ do
  @message.delete
end

When /^I receive a message in a block$/ do
  eventually(10) do
    @queue.receive_message { |msg| @message = msg }
    @message.should_not be_nil
  end
end

Given /^I fork a process to send (\d+) random numbers to the queue over a period of (\d+) seconds$/ do |count, seconds|
  (count, seconds) = [count, seconds].map { |i| i.to_i }

  @numbers = []
  count.times { @numbers << rand(1000000) }
  @child_pid = fork do
    begin
      start_time = Time.now
      end_time = start_time + seconds
      while !@numbers.empty?
        begin
          @queue.send_message(@numbers.pop.to_s)
          seconds_remaining = end_time - Time.now
        end until
          @numbers.empty? or
          seconds_remaining > 0 && seconds_remaining.to_f / @numbers.size >= 1.0
        sleep 1
      end
    rescue Exception => e
      exit 1
    else
      exit 0
    end
  end
end

When /^I poll for messages with an idle timeout of (\d+) seconds$/ do |idle|
  @received = []
  @handles = []
  @start_time = Time.now

  require 'timeout'
  Timeout.timeout(120) do
    @queue.poll(:idle_timeout => idle.to_i) do |msg|
      @received << msg.body.to_i
      @handles << msg.handle
    end
  end
  @end_time = Time.now
end

Then /^I should have received all of the messages within (\d+)(?:-(\d+))? seconds$/ do |begin_time, end_time|
  (@numbers - @received).should be_empty if @numbers
  if end_time.nil?
    (@end_time - @start_time).should < begin_time.to_i
  else
    (begin_time.to_i..end_time.to_i).should include(@end_time - @start_time)
  end
end

Then /^each message receipt handle should have been deleted$/ do
  @handles.each do |handle|
    @http_handler.requests_made.select do |req|
      action = req.params.find { |p| p.name == "Action" } and
        action.value == "DeleteMessage"
    end.map do |req|
      req.params.find { |p| p.name == "ReceiptHandle" }
    end.compact.map do |param|
      param.value
    end.should include(handle)
  end
end

Then /^the forked process should have completed without errors$/ do
  Process.wait(@child_pid)
  $?.exitstatus.should == 0
end

When /^I set the visibility timeout to (\d+) seconds$/ do |timeout|
  @message.visibility_timeout = timeout.to_i
end

When /^I receive the message "([^\"]*)" requesting the following attributes:$/ do |msg, table|
  attributes = table.raw.flatten.map { |att| att.to_sym }
  eventually(10) do
    @message = @queue.receive_message(:attributes => attributes)
    @message.body.should == msg
  end
end

Given /^I set wait time on the queue to (\d+)$/ do |wait_time|
  @queue.wait_time_seconds = wait_time.to_i
end

Then /^the queue wait time should eventually be (\d+)$/ do |wait_time|
  eventually(60) { @queue.wait_time_seconds.should == wait_time.to_i }
end

When /^I poll for mesages with a wait time of "(.*?)"$/ do |time|
  @numbers = nil
  @start_time = Time.now

  require 'timeout'
  Timeout.timeout(120) do
    @queue.poll(:wait_time_seconds => eval(time), :idle_timeout => 1) do |msg|
    end
  end
  @end_time = Time.now
end

Then /^the message should have the following time fields:$/ do |table|
  table.raw.flatten.each do |f|
    @message.send(f.to_sym).should be_a(Time)
    @message.send(f.to_sym).should be_within(60*60).of(Time.now)
  end
end

Then /^the message should have an integer receive count$/ do
  @message.receive_count.should be_an(Integer)
end

Then /^the message should have a string sender ID$/ do
  @message.sender_id.should be_a(String)
end

Then /^I should be able to send a message using a "(.*?)" client$/ do |region|
  @sqs = AWS::SQS.new(:sqs_endpoint => "sqs.#{region}.amazonaws.com")
  @sqs.queues[@queue.url].send_message('HELLO')
end


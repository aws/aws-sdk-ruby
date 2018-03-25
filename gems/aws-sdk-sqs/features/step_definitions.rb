# frozen_string_literal: true

Before("@sqs") do
  @client = Aws::SQS::Client.new
  @sqs_created_queues = []
end

After("@sqs") do
  @sqs_created_queues.each do |url|
    @client.delete_queue(queue_url: url)
  end
end

Given(/^I create a queue in "(.*?)"$/) do |region|
  name = "aws-sdk-core-integration-test-#{Time.now.to_i}-#{rand(1000)}"
  resp = Aws::SQS::Client.new(region: region).create_queue(queue_name: name)
  @queue_url = resp.queue_url
end

When(/^I operate on that queue in "(.*?)"$/) do |region|
  @resp = Aws::SQS::Client.new(region: region).send_message(
    queue_url: @queue_url,
    message_body: 'hello'
  )
end

Then(/^the request should be made against "(.*?)"$/) do |region|
  expect(@resp.context.http_request.endpoint.to_s).to include(region)
end

Given(/^I have have a queue$/) do
  @queue_name = "aws-sdk-integration-#{Time.now.to_i}-#{rand(10000)}"
  @queue_url = @client.create_queue(queue_name: @queue_name).queue_url
  @sqs_created_queues << @queue_url
end

Given(/^I send (\d+) messages to the queue$/) do |count|
  count.to_i.times do |n|
    @client.send_message(queue_url:@queue_url, message_body:"msg-#{n}")
  end
end

When(/^I poll (\d+) messages at a time with a (\d+) second idle timeout$/) do |max, idle|
  poller = Aws::SQS::QueuePoller.new(@queue_url, {
    client: @client,
    max_number_of_messages: max.to_i,
    idle_timeout: idle.to_i,
  })
  @received_messages = []
  @stats = poller.poll do |messages|
    @received_messages += messages
  end
end

Then(/^I should have received all (\d+) messages$/) do |count|
  expect(@received_messages.count).to eq(count.to_i)
end

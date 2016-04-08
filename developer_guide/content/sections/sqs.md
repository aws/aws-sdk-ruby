---
title: Getting Started with Amazon Simple Queue Service
---

## Client Creation

```ruby
require 'aws-sdk'

@client = Aws::SQS::Client.new(region: "eu-west-1")
```

A full description of initialization options is available in the
[API Documentation](http://docs.aws.amazon.com/sdkforruby/api/Aws/SQS/Client.html#initialize-instance_method).
For example, you might be assuming role credentials and wish for additional
retry attempts. Your client creation might look like this:

```ruby
require 'aws-sdk'

role_credentials = Aws::AssumeRoleCredentials.new(
  client: Aws::STS::Client.new(region: "eu-west-1"),
  role_arn: "linked::account::arn",
  role_session_name: "session-name"
)

@client = Aws::SQS::Client.new(
  region: "eu-west-1",
  credentials: role_credentials,
  retry_limit: 5
)
```

## Queues

Before we can send and receive messages, we need a queue to send them to. You
can create a queue with the `#create_queue` API:

```ruby
@queue = @client.create_queue(queue_name: "HelloSQS")
```

Some useful queue management APIs include `#purge_queue` and `#delete_queue`:

```ruby
# Warning: This operation deletes all messages in the queue.
@client.purge_queue(queue_url: @queue.queue_url)

# Warning: This permanently deletes the named queue.
@client.delete_queue(queue_url: @queue.queue_url)
```

You can also change queue attributes after queue creation with
`#set_queue_attributes`:

```ruby
@client.set_queue_attributes(
  queue_url: @queue.queue_url,
  attributes: {
    "VisibilityTimeout" => "90"
  }
)
```

## Messages

### Sending Messages

If you're following along, your new queue has no messages to receive, yet. We
can add messages to the queue with `#send_message`:

```ruby
@client.send_message(
  queue_url: @queue.queue_url,
  message_body: "Hello, SQS!"
)
```

Or, send a bunch of messages in a batch with `#send_message_batch`:

```ruby
send_batch = (1..10).map do |i|
  {
    id: "#{i}",
    message_body: "Batch Message Number #{i}"
  }
end

@client.send_message_batch(
  queue_url: @queue.queue_url,
  entries: send_batch
)
```

### Receiving Messages

At this point, we created an example queue, and populated it with messages. We
can receive a message from the queue with the `#receive_message` API:

```ruby
msg = @client.receive_message(queue_url: @queue.queue_url)
```

As you may note from the
[API Documentation](http://docs.aws.amazon.com/sdkforruby/api/Aws/SQS/Client.html#receive_message-instance_method)
for `#receive_message`, the response you get could contain multiple messages. In
this case, you should have received one:

```ruby
msg.messages.size # => 1
puts msg.messages.first.body
```

When I ran this for the above example, I saw `Batch Message Number 5` printed to
my screen. That's because SQS queues are unordered. When an SQS message is
received, your application might use the contents to perform some sort of work.
In our case, we will just delete the message from the queue with 
`#delete_message`.

```ruby
@client.delete_message(
  queue_url: @queue.queue_url,
  receipt_handle: msg.messages.first.receipt_handle
)
```

As with other operations we've described, you can receive and delete messages in
bulk with `#receive_message` and `#delete_message_batch`:

```ruby
msg_batch = @client.receive_message(
  queue_url: @queue.queue_url,
  max_number_of_messages: 5
)

# This number will be <= 5, even if we have many more than 5 messages in queue.
puts "Count: #{msg_batch.messages.size}"

msgs_to_delete = msg_batch.messages.map do |m|
  puts m.body
  { id: m.message_id, receipt_handle: m.receipt_handle }
end

@client.delete_message_batch(
  queue_url: @queue.queue_url,
  entries: msgs_to_delete
)
```

You can imagine writing a loop around this logic to process your messages. But
the AWS SDK for Ruby provides an abstraction to help you do this:
`Aws::SQS::QueuePoller`.

## Aws::SQS::QueuePoller

The [Queue Poller](http://docs.aws.amazon.com/sdkforruby/api/Aws/SQS/QueuePoller.html)
class simplifies the common "receive-process-delete" cycle by polling the queue
on your behalf, and automatically deleting messages at the end of each block.

For example, we can create a poller and process the remainder of our messages
like so:

```ruby
@poller = Aws::SQS::QueuePoller.new(@queue.queue_url)

@poller.poll(idle_timeout: 15) { |msg| puts msg.body }
```

The `:idle_timeout` parameter is important for this example, because we know
that no further messages are coming (yet) and the poller will, by default, poll
in an infinite loop. The `Aws::SQS::QueuePoller` provides multiple helpful
polling parameters and features, and you should check out the documentation for
a full rundown.

### A Multi-Threaded Example

Let's bring this all together with an example. We're going to create a thread
that is going to send messages in batches for a couple of minutes. Then, we'll
create a poller instance that is reading from the queue in real time, processing
the messages, and deleting them.

```ruby
require 'aws-sdk'

@client = Aws::SQS::Client.new(region: "us-west-2")
@queue = @client.create_queue(queue_name: "MyThreadedQueueExample")

def queue_writer
  # This will run for 1-3 minutes, averaging 2 minutes.
  count = 0
  60.times do
    batch = []
    (rand(10) + 1).times do
      count += 1
      batch << { id: "#{count}", message_body: "Message #{count}" }
    end
    @client.send_message_batch(
      queue_url: @queue.queue_url,
      entries: batch
    )
    sleep(rand(3) + 1)
  end
end

@poller = Aws::SQS::QueuePoller.new(@queue.queue_url)

writer_thread = Thread.new { queue_writer }

@poller.poll(idle_timeout: 20) do |msg|
  puts msg.body
end

writer_thread.join
```

It's easy to imagine this working in much the same way across a network, as both
the writer thread and the poller are simply making API calls to SQS.

## Conclusion

In this tutorial, we've learned how we can manage SQS queues and messages. We've
also seen how we can use batch processing and the `Aws::SQS::QueuePoller` class.
Finally, we put all of this together with a multi-threaded sender/receiver
example.

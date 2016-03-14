
# Establish connection with your SQS 

* be sure your user have proper permissions

```ruby
    @sqs = Aws::SQS::Client.new(region: 'eu-west-1')
```

## Examples

#### List all Queues

```ruby
    @sqs.list_queues
    # => #<struct Aws::SQS::Types::ListQueuesResult queue_urls=["https://sqs.eu-west-1.amazonaws.com/6666666666/my-sqs-queue-name"]>
```

####  Fetch messages from all Queues

```ruby
    messages = []
    @sqs.list_queues.queue_urls.each do |queue_url|
      messages << @sqs.receive_message(queue_url: queue_url)
    end  
    messages  #  [ #<struct Aws::SQS::Types::ReceiveMessageResult .....>, ]
```

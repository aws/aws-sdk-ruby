
# Establish connection with your SQS 

* be sure your user have proper permissions

```ruby
    sqs_client = Aws::SQS::Client.new(region: region_name)
    
    sqs_client.list_queues
    # #<struct Aws::SQS::Types::ListQueuesResult queue_urls=["https://sqs.eu-west-1.amazonaws.com/6666666666/my-sqs-queue-name"]>
    
    # fetch messages from all Queues

    messages = []
    sqs.list_queues.queue_urls.each do |queue_url|
      messages << sqs.receive_message(queue_url: queue_url)
    end  
    messages  #  [ #<struct Aws::SQS::Types::ReceiveMessageResult .....>, ]
```

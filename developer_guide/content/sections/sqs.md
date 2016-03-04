
# Establish connection with your SQS 

* be sure your user have proper permissions

```ruby
    aws_access_key_id =  'AxxxxxxxxxxxxxxxA'
    aws_secret_access_key = 'zbxxxxxxxxxxxxxxxxxxxxxxxxxv'
    region_name = 'eu-west-1'

    credentials = Aws::Credentials.new(aws_access_key_id, aws_secret_access_key)

    sqs_client = Aws::SQS::Client.new({
      region: region_name,
      credentials: credentials,
      # ...
    })
    
    sqs_client.list_queues
    # #<struct Aws::SQS::Types::ListQueuesResult queue_urls=["https://sqs.eu-west-1.amazonaws.com/6666666666/my-sqs-queue-name"]>
```

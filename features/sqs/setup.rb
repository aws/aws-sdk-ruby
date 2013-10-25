Before("@sqs") do
  @sqs = Aws.sqs
  @sqs_created_queues = []
end

After("@sqs") do
  @sqs_created_queues.each do |url|
    @sqs.delete_delete_queue(queue_url: url)
  end
end

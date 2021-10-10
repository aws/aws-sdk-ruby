Before("@kafkaconnect") do
  @service = Aws::KafkaConnect::Resource.new
  @client = @service.client
end

After("@kafkaconnect") do
  # shared cleanup logic
end

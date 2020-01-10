Before("@mq") do
  @service = Aws::MQ::Resource.new
  @client = @service.client
end

After("@mq") do
  # shared cleanup logic
end

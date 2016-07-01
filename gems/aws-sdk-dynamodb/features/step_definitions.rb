Before("@dynamodb") do
  @service = Aws::DynamoDB::Resource.new
  @client = @service.client
end

After("@dynamodb") do
  # shared cleanup logic
end

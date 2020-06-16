# frozen_string_literal: true

Before("@dynamodbstreams") do
  @service = Aws::DynamoDBStreams::Resource.new
  @client = @service.client
end

After("@dynamodbstreams") do
  # shared cleanup logic
end

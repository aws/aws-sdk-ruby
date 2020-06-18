# frozen_string_literal: true

Before("@apigateway") do
  @service = Aws::APIGateway::Resource.new
  @client = @service.client
end

After("@apigateway") do
  # shared cleanup logic
end

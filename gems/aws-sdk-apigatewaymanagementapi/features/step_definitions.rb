Before("@apigatewaymanagementapi") do
  @service = Aws::ApiGatewayManagementApi::Resource.new
  @client = @service.client
end

After("@apigatewaymanagementapi") do
  # shared cleanup logic
end

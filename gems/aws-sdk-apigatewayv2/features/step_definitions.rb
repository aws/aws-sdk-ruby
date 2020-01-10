Before("@apigatewayv2") do
  @service = Aws::ApiGatewayV2::Resource.new
  @client = @service.client
end

After("@apigatewayv2") do
  # shared cleanup logic
end

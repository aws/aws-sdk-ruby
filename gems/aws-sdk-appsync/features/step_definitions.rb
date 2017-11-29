Before("@appsync") do
  @service = Aws::AppSync::Resource.new
  @client = @service.client
end

After("@appsync") do
  # shared cleanup logic
end

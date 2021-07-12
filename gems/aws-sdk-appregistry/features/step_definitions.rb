Before("@appregistry") do
  @service = Aws::AppRegistry::Resource.new
  @client = @service.client
end

After("@appregistry") do
  # shared cleanup logic
end

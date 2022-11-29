Before("@opensearchserverless") do
  @service = Aws::OpenSearchServerless::Resource.new
  @client = @service.client
end

After("@opensearchserverless") do
  # shared cleanup logic
end

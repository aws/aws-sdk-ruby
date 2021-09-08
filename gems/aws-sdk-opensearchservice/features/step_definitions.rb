Before("@opensearchservice") do
  @service = Aws::OpenSearchService::Resource.new
  @client = @service.client
end

After("@opensearchservice") do
  # shared cleanup logic
end

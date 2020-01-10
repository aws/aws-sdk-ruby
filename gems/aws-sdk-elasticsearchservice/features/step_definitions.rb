Before("@elasticsearchservice") do
  @service = Aws::ElasticsearchService::Resource.new
  @client = @service.client
end

After("@elasticsearchservice") do
  # shared cleanup logic
end

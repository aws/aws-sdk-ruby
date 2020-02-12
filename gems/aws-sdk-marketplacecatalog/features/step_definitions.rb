Before("@marketplacecatalog") do
  @service = Aws::MarketplaceCatalog::Resource.new
  @client = @service.client
end

After("@marketplacecatalog") do
  # shared cleanup logic
end

Before("@marketplacereporting") do
  @service = Aws::MarketplaceReporting::Resource.new
  @client = @service.client
end

After("@marketplacereporting") do
  # shared cleanup logic
end

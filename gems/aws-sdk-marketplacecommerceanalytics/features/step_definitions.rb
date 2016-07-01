Before("@marketplacecommerceanalytics") do
  @service = Aws::MarketplaceCommerceAnalytics::Resource.new
  @client = @service.client
end

After("@marketplacecommerceanalytics") do
  # shared cleanup logic
end

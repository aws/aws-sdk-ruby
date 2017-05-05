Before("@marketplaceentitlementservice") do
  @service = Aws::MarketplaceEntitlementService::Resource.new
  @client = @service.client
end

After("@marketplaceentitlementservice") do
  # shared cleanup logic
end

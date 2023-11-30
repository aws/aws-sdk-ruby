Before("@marketplacedeployment") do
  @service = Aws::MarketplaceDeployment::Resource.new
  @client = @service.client
end

After("@marketplacedeployment") do
  # shared cleanup logic
end

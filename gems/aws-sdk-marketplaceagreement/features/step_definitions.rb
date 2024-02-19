Before("@marketplaceagreement") do
  @service = Aws::MarketplaceAgreement::Resource.new
  @client = @service.client
end

After("@marketplaceagreement") do
  # shared cleanup logic
end

Before("@marketplacemetering") do
  @service = Aws::MarketplaceMetering::Resource.new
  @client = @service.client
end

After("@marketplacemetering") do
  # shared cleanup logic
end

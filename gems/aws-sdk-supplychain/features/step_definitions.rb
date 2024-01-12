Before("@supplychain") do
  @service = Aws::SupplyChain::Resource.new
  @client = @service.client
end

After("@supplychain") do
  # shared cleanup logic
end

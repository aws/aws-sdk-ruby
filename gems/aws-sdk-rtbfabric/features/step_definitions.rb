Before("@rtbfabric") do
  @service = Aws::RTBFabric::Resource.new
  @client = @service.client
end

After("@rtbfabric") do
  # shared cleanup logic
end

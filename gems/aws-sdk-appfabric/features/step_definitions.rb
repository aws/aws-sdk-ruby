Before("@appfabric") do
  @service = Aws::AppFabric::Resource.new
  @client = @service.client
end

After("@appfabric") do
  # shared cleanup logic
end

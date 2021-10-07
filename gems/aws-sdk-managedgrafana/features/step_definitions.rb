Before("@managedgrafana") do
  @service = Aws::ManagedGrafana::Resource.new
  @client = @service.client
end

After("@managedgrafana") do
  # shared cleanup logic
end

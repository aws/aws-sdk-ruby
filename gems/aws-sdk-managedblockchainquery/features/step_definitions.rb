Before("@managedblockchainquery") do
  @service = Aws::ManagedBlockchainQuery::Resource.new
  @client = @service.client
end

After("@managedblockchainquery") do
  # shared cleanup logic
end

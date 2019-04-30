Before("@managedblockchain") do
  @service = Aws::ManagedBlockchain::Resource.new
  @client = @service.client
end

After("@managedblockchain") do
  # shared cleanup logic
end

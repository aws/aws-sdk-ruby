Before("@identitystore") do
  @service = Aws::IdentityStore::Resource.new
  @client = @service.client
end

After("@identitystore") do
  # shared cleanup logic
end

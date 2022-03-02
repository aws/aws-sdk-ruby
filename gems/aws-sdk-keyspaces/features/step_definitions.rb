Before("@keyspaces") do
  @service = Aws::Keyspaces::Resource.new
  @client = @service.client
end

After("@keyspaces") do
  # shared cleanup logic
end

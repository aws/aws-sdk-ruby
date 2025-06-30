Before("@keyspacesstreams") do
  @service = Aws::KeyspacesStreams::Resource.new
  @client = @service.client
end

After("@keyspacesstreams") do
  # shared cleanup logic
end

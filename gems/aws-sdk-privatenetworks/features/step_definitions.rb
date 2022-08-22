Before("@privatenetworks") do
  @service = Aws::PrivateNetworks::Resource.new
  @client = @service.client
end

After("@privatenetworks") do
  # shared cleanup logic
end

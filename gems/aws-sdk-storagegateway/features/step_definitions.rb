Before("@storagegateway") do
  @service = Aws::StorageGateway::Resource.new
  @client = @service.client
end

After("@storagegateway") do
  # shared cleanup logic
end

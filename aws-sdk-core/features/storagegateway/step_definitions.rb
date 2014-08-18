Before("@storagegateway") do
  @client = Aws::StorageGateway::Client.new
end

After("@storagegateway") do
end

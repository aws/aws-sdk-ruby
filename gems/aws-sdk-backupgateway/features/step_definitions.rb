Before("@backupgateway") do
  @service = Aws::BackupGateway::Resource.new
  @client = @service.client
end

After("@backupgateway") do
  # shared cleanup logic
end

Before("@backupstorage") do
  @service = Aws::BackupStorage::Resource.new
  @client = @service.client
end

After("@backupstorage") do
  # shared cleanup logic
end

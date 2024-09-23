Before("@directoryservicedata") do
  @service = Aws::DirectoryServiceData::Resource.new
  @client = @service.client
end

After("@directoryservicedata") do
  # shared cleanup logic
end

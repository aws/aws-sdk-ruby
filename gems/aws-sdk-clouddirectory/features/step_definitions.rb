Before("@clouddirectory") do
  @service = Aws::CloudDirectory::Resource.new
  @client = @service.client
end

After("@clouddirectory") do
  # shared cleanup logic
end

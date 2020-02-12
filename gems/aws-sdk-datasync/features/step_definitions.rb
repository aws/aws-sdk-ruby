Before("@datasync") do
  @service = Aws::DataSync::Resource.new
  @client = @service.client
end

After("@datasync") do
  # shared cleanup logic
end

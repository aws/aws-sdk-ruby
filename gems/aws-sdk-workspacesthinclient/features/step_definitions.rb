Before("@workspacesthinclient") do
  @service = Aws::WorkSpacesThinClient::Resource.new
  @client = @service.client
end

After("@workspacesthinclient") do
  # shared cleanup logic
end

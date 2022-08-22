Before("@supportapp") do
  @service = Aws::SupportApp::Resource.new
  @client = @service.client
end

After("@supportapp") do
  # shared cleanup logic
end

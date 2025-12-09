Before("@mwaaserverless") do
  @service = Aws::MWAAServerless::Resource.new
  @client = @service.client
end

After("@mwaaserverless") do
  # shared cleanup logic
end

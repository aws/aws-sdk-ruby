Before("@chimesdkidentity") do
  @service = Aws::ChimeSDKIdentity::Resource.new
  @client = @service.client
end

After("@chimesdkidentity") do
  # shared cleanup logic
end

Before("@cognitosync") do
  @service = Aws::CognitoSync::Resource.new
  @client = @service.client
end

After("@cognitosync") do
  # shared cleanup logic
end

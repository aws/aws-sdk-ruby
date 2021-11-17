Before("@appconfigdata") do
  @service = Aws::AppConfigData::Resource.new
  @client = @service.client
end

After("@appconfigdata") do
  # shared cleanup logic
end

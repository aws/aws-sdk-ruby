Before("@qapps") do
  @service = Aws::QApps::Resource.new
  @client = @service.client
end

After("@qapps") do
  # shared cleanup logic
end

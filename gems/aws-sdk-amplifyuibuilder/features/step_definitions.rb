Before("@amplifyuibuilder") do
  @service = Aws::AmplifyUIBuilder::Resource.new
  @client = @service.client
end

After("@amplifyuibuilder") do
  # shared cleanup logic
end

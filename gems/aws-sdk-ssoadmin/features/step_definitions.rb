Before("@ssoadmin") do
  @service = Aws::SSOAdmin::Resource.new
  @client = @service.client
end

After("@ssoadmin") do
  # shared cleanup logic
end

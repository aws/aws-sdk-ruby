Before("@apprunner") do
  @service = Aws::AppRunner::Resource.new
  @client = @service.client
end

After("@apprunner") do
  # shared cleanup logic
end

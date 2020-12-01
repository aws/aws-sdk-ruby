Before("@appintegrationsservice") do
  @service = Aws::AppIntegrationsService::Resource.new
  @client = @service.client
end

After("@appintegrationsservice") do
  # shared cleanup logic
end

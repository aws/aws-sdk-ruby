Before("@iotmanagedintegrations") do
  @service = Aws::IoTManagedIntegrations::Resource.new
  @client = @service.client
end

After("@iotmanagedintegrations") do
  # shared cleanup logic
end

Before("@iotfleethub") do
  @service = Aws::IoTFleetHub::Resource.new
  @client = @service.client
end

After("@iotfleethub") do
  # shared cleanup logic
end

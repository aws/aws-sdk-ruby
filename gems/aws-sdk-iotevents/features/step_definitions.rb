Before("@iotevents") do
  @service = Aws::IoTEvents::Resource.new
  @client = @service.client
end

After("@iotevents") do
  # shared cleanup logic
end

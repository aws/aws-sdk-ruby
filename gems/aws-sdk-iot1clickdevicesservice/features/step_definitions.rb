Before("@iot1clickdevicesservice") do
  @service = Aws::IoT1ClickDevicesService::Resource.new
  @client = @service.client
end

After("@iot1clickdevicesservice") do
  # shared cleanup logic
end

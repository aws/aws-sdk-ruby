Before("@iotwireless") do
  @service = Aws::IoTWireless::Resource.new
  @client = @service.client
end

After("@iotwireless") do
  # shared cleanup logic
end

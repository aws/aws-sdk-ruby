Before("@snowdevicemanagement") do
  @service = Aws::SnowDeviceManagement::Resource.new
  @client = @service.client
end

After("@snowdevicemanagement") do
  # shared cleanup logic
end

Before("@iotdeviceadvisor") do
  @service = Aws::IoTDeviceAdvisor::Resource.new
  @client = @service.client
end

After("@iotdeviceadvisor") do
  # shared cleanup logic
end

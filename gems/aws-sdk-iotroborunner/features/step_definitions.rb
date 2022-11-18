Before("@iotroborunner") do
  @service = Aws::IoTRoboRunner::Resource.new
  @client = @service.client
end

After("@iotroborunner") do
  # shared cleanup logic
end

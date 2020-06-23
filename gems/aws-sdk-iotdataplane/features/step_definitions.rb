Before("@iotdataplane") do
  @service = Aws::IoTDataPlane::Resource.new(region: 'us-west-2', endpoint: 'https://data.iot.us-west-2.amazonaws.com')
  @client = @service.client
end

After("@iotdataplane") do
  # shared cleanup logic
end

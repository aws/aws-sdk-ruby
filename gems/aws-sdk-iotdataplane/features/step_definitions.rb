Before("@iotdataplane") do
  @service = Aws::IoTDataPlane::Resource.new(endpoint: 'https://data.iot.us-west-2.amazonaws.com')
  @client = @service.client
end

After("@iotdataplane") do
  # shared cleanup logic
end

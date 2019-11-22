Before("@iotthingsgraph") do
  @service = Aws::IoTThingsGraph::Resource.new
  @client = @service.client
end

After("@iotthingsgraph") do
  # shared cleanup logic
end

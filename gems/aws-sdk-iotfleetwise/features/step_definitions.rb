Before("@iotfleetwise") do
  @service = Aws::IoTFleetWise::Resource.new
  @client = @service.client
end

After("@iotfleetwise") do
  # shared cleanup logic
end

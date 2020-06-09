Before("@ioteventsdata") do
  @service = Aws::IoTEventsData::Resource.new
  @client = @service.client
end

After("@ioteventsdata") do
  # shared cleanup logic
end

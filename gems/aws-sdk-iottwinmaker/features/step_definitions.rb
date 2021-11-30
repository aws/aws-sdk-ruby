Before("@iottwinmaker") do
  @service = Aws::IoTTwinMaker::Resource.new
  @client = @service.client
end

After("@iottwinmaker") do
  # shared cleanup logic
end

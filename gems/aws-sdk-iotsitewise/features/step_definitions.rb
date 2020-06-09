Before("@iotsitewise") do
  @service = Aws::IoTSiteWise::Resource.new
  @client = @service.client
end

After("@iotsitewise") do
  # shared cleanup logic
end

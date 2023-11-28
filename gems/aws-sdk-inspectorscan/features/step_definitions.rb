Before("@inspectorscan") do
  @service = Aws::InspectorScan::Resource.new
  @client = @service.client
end

After("@inspectorscan") do
  # shared cleanup logic
end

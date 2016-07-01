Before("@datapipeline") do
  @service = Aws::DataPipeline::Resource.new
  @client = @service.client
end

After("@datapipeline") do
  # shared cleanup logic
end

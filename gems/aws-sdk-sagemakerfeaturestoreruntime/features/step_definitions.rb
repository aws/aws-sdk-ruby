Before("@sagemakerfeaturestoreruntime") do
  @service = Aws::SageMakerFeatureStoreRuntime::Resource.new
  @client = @service.client
end

After("@sagemakerfeaturestoreruntime") do
  # shared cleanup logic
end

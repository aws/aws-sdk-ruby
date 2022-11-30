Before("@sagemakergeospatial") do
  @service = Aws::SageMakerGeospatial::Resource.new
  @client = @service.client
end

After("@sagemakergeospatial") do
  # shared cleanup logic
end

Before("@sagemakermetrics") do
  @service = Aws::SageMakerMetrics::Resource.new
  @client = @service.client
end

After("@sagemakermetrics") do
  # shared cleanup logic
end

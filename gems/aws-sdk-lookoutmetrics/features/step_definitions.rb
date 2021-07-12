Before("@lookoutmetrics") do
  @service = Aws::LookoutMetrics::Resource.new
  @client = @service.client
end

After("@lookoutmetrics") do
  # shared cleanup logic
end

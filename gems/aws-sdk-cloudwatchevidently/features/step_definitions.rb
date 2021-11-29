Before("@cloudwatchevidently") do
  @service = Aws::CloudWatchEvidently::Resource.new
  @client = @service.client
end

After("@cloudwatchevidently") do
  # shared cleanup logic
end

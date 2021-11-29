Before("@cloudwatchrum") do
  @service = Aws::CloudWatchRUM::Resource.new
  @client = @service.client
end

After("@cloudwatchrum") do
  # shared cleanup logic
end

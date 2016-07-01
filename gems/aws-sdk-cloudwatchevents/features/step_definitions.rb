Before("@cloudwatchevents") do
  @service = Aws::CloudWatchEvents::Resource.new
  @client = @service.client
end

After("@cloudwatchevents") do
  # shared cleanup logic
end

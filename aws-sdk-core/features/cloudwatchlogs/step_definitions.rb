Before("@cloudwatchlogs") do
  @client = Aws::CloudWatchLogs::Client.new
end

After("@cloudwatchlogs") do
end

# frozen_string_literal: true

Before("@cloudwatchlogs") do
  @service = Aws::CloudWatchLogs::Resource.new
  @client = @service.client
end

After("@cloudwatchlogs") do
  # shared cleanup logic
end

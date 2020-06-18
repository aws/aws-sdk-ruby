# frozen_string_literal: true

Before("@kinesisanalyticsv2") do
  @service = Aws::KinesisAnalyticsV2::Resource.new
  @client = @service.client
end

After("@kinesisanalyticsv2") do
  # shared cleanup logic
end

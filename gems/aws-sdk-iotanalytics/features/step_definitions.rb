# frozen_string_literal: true

Before("@iotanalytics") do
  @service = Aws::IoTAnalytics::Resource.new
  @client = @service.client
end

After("@iotanalytics") do
  # shared cleanup logic
end

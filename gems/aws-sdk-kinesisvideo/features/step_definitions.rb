# frozen_string_literal: true

Before("@kinesisvideo") do
  @service = Aws::KinesisVideo::Resource.new
  @client = @service.client
end

After("@kinesisvideo") do
  # shared cleanup logic
end

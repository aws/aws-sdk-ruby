# frozen_string_literal: true

Before("@transcribeservice") do
  @service = Aws::TranscribeService::Resource.new
  @client = @service.client
end

After("@transcribeservice") do
  # shared cleanup logic
end

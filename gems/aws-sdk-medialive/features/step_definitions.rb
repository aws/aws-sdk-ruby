# frozen_string_literal: true

Before("@medialive") do
  @service = Aws::MediaLive::Resource.new
  @client = @service.client
end

After("@medialive") do
  # shared cleanup logic
end

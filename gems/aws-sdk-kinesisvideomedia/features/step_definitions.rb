# frozen_string_literal: true

Before("@kinesisvideomedia") do
  @service = Aws::KinesisVideoMedia::Resource.new
  @client = @service.client
end

After("@kinesisvideomedia") do
  # shared cleanup logic
end

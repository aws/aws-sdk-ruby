# frozen_string_literal: true

Before("@mediaconnect") do
  @service = Aws::MediaConnect::Resource.new
  @client = @service.client
end

After("@mediaconnect") do
  # shared cleanup logic
end

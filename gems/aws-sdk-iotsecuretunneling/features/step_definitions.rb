# frozen_string_literal: true

Before("@iotsecuretunneling") do
  @service = Aws::IoTSecureTunneling::Resource.new
  @client = @service.client
end

After("@iotsecuretunneling") do
  # shared cleanup logic
end

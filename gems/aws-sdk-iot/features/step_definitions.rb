# frozen_string_literal: true

Before("@iot") do
  @service = Aws::IoT::Resource.new
  @client = @service.client
end

After("@iot") do
  # shared cleanup logic
end

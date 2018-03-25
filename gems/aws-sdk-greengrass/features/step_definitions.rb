# frozen_string_literal: true

Before("@greengrass") do
  @service = Aws::Greengrass::Resource.new
  @client = @service.client
end

After("@greengrass") do
  # shared cleanup logic
end

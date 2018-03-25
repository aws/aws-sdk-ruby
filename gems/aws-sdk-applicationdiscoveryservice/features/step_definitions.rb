# frozen_string_literal: true

Before("@applicationdiscoveryservice") do
  @service = Aws::ApplicationDiscoveryService::Resource.new
  @client = @service.client
end

After("@applicationdiscoveryservice") do
  # shared cleanup logic
end

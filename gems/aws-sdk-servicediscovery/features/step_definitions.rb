# frozen_string_literal: true

Before("@servicediscovery") do
  @service = Aws::ServiceDiscovery::Resource.new
  @client = @service.client
end

After("@servicediscovery") do
  # shared cleanup logic
end

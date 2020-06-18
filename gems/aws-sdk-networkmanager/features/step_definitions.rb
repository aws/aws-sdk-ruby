# frozen_string_literal: true

Before("@networkmanager") do
  @service = Aws::NetworkManager::Resource.new
  @client = @service.client
end

After("@networkmanager") do
  # shared cleanup logic
end

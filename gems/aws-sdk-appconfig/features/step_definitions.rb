# frozen_string_literal: true

Before("@appconfig") do
  @service = Aws::AppConfig::Resource.new
  @client = @service.client
end

After("@appconfig") do
  # shared cleanup logic
end

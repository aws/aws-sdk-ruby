# frozen_string_literal: true

Before("@configservice") do
  @service = Aws::ConfigService::Resource.new
  @client = @service.client
end

After("@configservice") do
  # shared cleanup logic
end

# frozen_string_literal: true

Before("@directconnect") do
  @service = Aws::DirectConnect::Resource.new
  @client = @service.client
end

After("@directconnect") do
  # shared cleanup logic
end

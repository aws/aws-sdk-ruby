# frozen_string_literal: true

Before("@mobile") do
  @service = Aws::Mobile::Resource.new
  @client = @service.client
end

After("@mobile") do
  # shared cleanup logic
end

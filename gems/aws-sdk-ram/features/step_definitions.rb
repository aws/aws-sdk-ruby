# frozen_string_literal: true

Before("@ram") do
  @service = Aws::RAM::Resource.new
  @client = @service.client
end

After("@ram") do
  # shared cleanup logic
end

# frozen_string_literal: true

Before("@kendra") do
  @service = Aws::Kendra::Resource.new
  @client = @service.client
end

After("@kendra") do
  # shared cleanup logic
end

# frozen_string_literal: true

Before("@lambda") do
  @service = Aws::Lambda::Resource.new
  @client = @service.client
end

After("@lambda") do
  # shared cleanup logic
end

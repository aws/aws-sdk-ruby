# frozen_string_literal: true

Before("@shield") do
  @service = Aws::Shield::Resource.new
  @client = @service.client
end

After("@shield") do
  # shared cleanup logic
end

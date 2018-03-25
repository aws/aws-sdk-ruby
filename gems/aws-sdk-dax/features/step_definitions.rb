# frozen_string_literal: true

Before("@dax") do
  @service = Aws::DAX::Resource.new
  @client = @service.client
end

After("@dax") do
  # shared cleanup logic
end

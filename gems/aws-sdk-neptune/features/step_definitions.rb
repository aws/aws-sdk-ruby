# frozen_string_literal: true

Before("@neptune") do
  @service = Aws::Neptune::Resource.new
  @client = @service.client
end

After("@neptune") do
  # shared cleanup logic
end

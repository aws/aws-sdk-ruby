# frozen_string_literal: true

Before("@mturk") do
  @service = Aws::MTurk::Resource.new
  @client = @service.client
end

After("@mturk") do
  # shared cleanup logic
end

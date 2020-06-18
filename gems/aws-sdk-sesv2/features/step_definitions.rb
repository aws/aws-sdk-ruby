# frozen_string_literal: true

Before("@sesv2") do
  @service = Aws::SESV2::Resource.new
  @client = @service.client
end

After("@sesv2") do
  # shared cleanup logic
end

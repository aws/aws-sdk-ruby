# frozen_string_literal: true

Before("@alexaforbusiness") do
  @service = Aws::AlexaForBusiness::Resource.new
  @client = @service.client
end

After("@alexaforbusiness") do
  # shared cleanup logic
end

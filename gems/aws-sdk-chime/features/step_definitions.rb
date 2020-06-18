# frozen_string_literal: true

Before("@chime") do
  @service = Aws::Chime::Resource.new
  @client = @service.client
end

After("@chime") do
  # shared cleanup logic
end

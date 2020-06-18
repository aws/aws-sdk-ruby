# frozen_string_literal: true

Before("@connect") do
  @service = Aws::Connect::Resource.new
  @client = @service.client
end

After("@connect") do
  # shared cleanup logic
end

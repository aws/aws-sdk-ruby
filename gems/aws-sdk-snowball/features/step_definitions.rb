# frozen_string_literal: true

Before("@snowball") do
  @service = Aws::Snowball::Resource.new
  @client = @service.client
end

After("@snowball") do
  # shared cleanup logic
end

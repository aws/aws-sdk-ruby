# frozen_string_literal: true

Before("@athena") do
  @service = Aws::Athena::Resource.new
  @client = @service.client
end

After("@athena") do
  # shared cleanup logic
end

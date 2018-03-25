# frozen_string_literal: true

Before("@glue") do
  @service = Aws::Glue::Resource.new
  @client = @service.client
end

After("@glue") do
  # shared cleanup logic
end

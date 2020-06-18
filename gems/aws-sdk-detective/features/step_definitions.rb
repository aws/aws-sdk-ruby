# frozen_string_literal: true

Before("@detective") do
  @service = Aws::Detective::Resource.new
  @client = @service.client
end

After("@detective") do
  # shared cleanup logic
end

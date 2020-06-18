# frozen_string_literal: true

Before("@outposts") do
  @service = Aws::Outposts::Resource.new
  @client = @service.client
end

After("@outposts") do
  # shared cleanup logic
end

# frozen_string_literal: true

Before("@cloud9") do
  @service = Aws::Cloud9::Resource.new
  @client = @service.client
end

After("@cloud9") do
  # shared cleanup logic
end

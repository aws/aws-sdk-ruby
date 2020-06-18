# frozen_string_literal: true

Before("@codestarnotifications") do
  @service = Aws::CodeStarNotifications::Resource.new
  @client = @service.client
end

After("@codestarnotifications") do
  # shared cleanup logic
end

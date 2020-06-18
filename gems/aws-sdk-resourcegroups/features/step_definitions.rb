# frozen_string_literal: true

Before("@resourcegroups") do
  @service = Aws::ResourceGroups::Resource.new
  @client = @service.client
end

After("@resourcegroups") do
  # shared cleanup logic
end

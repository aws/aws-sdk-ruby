# frozen_string_literal: true

Before("@resourcegroupstaggingapi") do
  @service = Aws::ResourceGroupsTaggingAPI::Resource.new
  @client = @service.client
end

After("@resourcegroupstaggingapi") do
  # shared cleanup logic
end

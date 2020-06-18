# frozen_string_literal: true

Before("@directoryservice") do
  @service = Aws::DirectoryService::Resource.new
  @client = @service.client
end

After("@directoryservice") do
  # shared cleanup logic
end

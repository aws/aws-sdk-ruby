# frozen_string_literal: true

Before("@lexruntimeservice") do
  @service = Aws::LexRuntimeService::Resource.new
  @client = @service.client
end

After("@lexruntimeservice") do
  # shared cleanup logic
end

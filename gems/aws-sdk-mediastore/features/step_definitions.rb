# frozen_string_literal: true

Before("@mediastore") do
  @service = Aws::MediaStore::Resource.new
  @client = @service.client
end

After("@mediastore") do
  # shared cleanup logic
end

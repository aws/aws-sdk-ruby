# frozen_string_literal: true

Before("@appstream") do
  @service = Aws::AppStream::Resource.new
  @client = @service.client
end

After("@appstream") do
  # shared cleanup logic
end

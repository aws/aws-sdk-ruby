# frozen_string_literal: true

Before("@kms") do
  @service = Aws::KMS::Resource.new
  @client = @service.client
end

After("@kms") do
  # shared cleanup logic
end

# frozen_string_literal: true

Before("@s3control") do
  @service = Aws::S3Control::Resource.new
  @client = @service.client
end

After("@s3control") do
  # shared cleanup logic
end

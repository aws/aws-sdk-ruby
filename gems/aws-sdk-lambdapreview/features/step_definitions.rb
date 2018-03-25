# frozen_string_literal: true

Before("@lambdapreview") do
  @service = Aws::LambdaPreview::Resource.new
  @client = @service.client
end

After("@lambdapreview") do
  # shared cleanup logic
end

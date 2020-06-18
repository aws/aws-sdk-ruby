# frozen_string_literal: true

Before("@mediaconvert") do
  @service = Aws::MediaConvert::Resource.new
  @client = @service.client
end

After("@mediaconvert") do
  # shared cleanup logic
end

# frozen_string_literal: true

Before("@imagebuilder") do
  @service = Aws::Imagebuilder::Resource.new
  @client = @service.client
end

After("@imagebuilder") do
  # shared cleanup logic
end

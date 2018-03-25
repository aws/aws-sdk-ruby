# frozen_string_literal: true

Before("@swf") do
  @service = Aws::SWF::Resource.new
  @client = @service.client
end

After("@swf") do
  # shared cleanup logic
end

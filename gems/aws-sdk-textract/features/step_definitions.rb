# frozen_string_literal: true

Before("@textract") do
  @service = Aws::Textract::Resource.new
  @client = @service.client
end

After("@textract") do
  # shared cleanup logic
end

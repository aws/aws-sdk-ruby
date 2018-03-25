# frozen_string_literal: true

Before("@ses") do
  @service = Aws::SES::Resource.new
  @client = @service.client
end

After("@ses") do
  # shared cleanup logic
end
